import groovy.json.JsonOutput
import groovyx.net.http.HttpResponseException
import groovyx.net.http.RESTClient
import static groovyx.net.http.ContentType.JSON

@Grab(group = 'org.codehaus.groovy.modules.http-builder', module = 'http-builder', version = '0.6')

def get = { RESTClient restClient, String path, Map query = [] ->
    try {
        def response = query ? restClient.get(path: path, query: query, contentType: JSON) : restClient.get(path: path, contentType: JSON)
        assert response.status == 200
        return response.data
    } catch (HttpResponseException ex) {
        return null
    }
}

/**
 *  Strip off leading "T-"
 */
def normalizeNodeNumber = { String nodeStr ->
    def node = nodeStr
    if (nodeStr.toLowerCase().startsWith("t")) {
        node = nodeStr.substring(1, nodeStr.length())
    }
    if (node.startsWith("-")) {
        node = node.substring(1, node.length())
    }
    //println ">>>>>>>>>>> ${nodeStr} --> ${node}"
    return node
}

def summarizeNode = { node, data ->
    if (data) {
        //println JsonOutput.prettyPrint(JsonOutput.toJson(data))
        /*
        {
            "Location": {
                "@locale": "en-US",
                "ID": 3844,
                "Name": "Perth Amboy Flow Center",
                "TypeCode": "DC",
                "TypeDescription": "Distribution Center",
                "SubTypeDescription": "Regional Distribution Center",
                "Address": {
                    "AddressLine1": "980 HIGH ST",
                    "City": "PERTH AMBOY",
                    "County": "MIDDLESEX",
                    "Subdivision": "NJ",
                    "PostalCode": "08861",
                    "CountryName": "United States",
                    "FormattedAddress": "980 HIGH ST, PERTH AMBOY, NJ 08861"
                },
                "TimeZone": {
                    "TimeZoneCode": "EST",
                    "TimeZoneDescription": "Eastern Std Time",
                    "TimeZoneOffset": {
                        "OffsetCode": "UTC",
                        "OffsetHours": "-05"
                    }
                },
                "TelephoneNumber": {
                    "FunctionalTypeDescription": "Main",
                    "PhoneNumber": "(732) 646-4600"
                },
                "LocationMilestones": {
                    "OpenDate": "2017-06-01T12:00:00",
                    "LastRemodelDate": "null"
                }
            }
        }
        */
        println "${data.Location.ID}"
        println "    ${data.Location.Name}"
        println "    ${data.Location.TypeCode}, ${data.Location.TypeDescription}, ${data.Location.SubTypeDescription}"
        println "    ${data.Location.Address.City}, ${data.Location.Address.Subdivision}"
    } else {
        println "${node} : NOT FOUND"
    }
}

def uri = "https://api.target.com/v2/location/"
//def uri = "https://api.target.com/locations/v3/" // The v3 in prod as of 2018.09 requires a NUID, AD group and ID2.0 token.

def client = new RESTClient(uri)
def query = [
    key: "RzS79Bx5UFyVNrMxUyQEfj4EZ4VXxGQe",
]

if (this.args) {
    this.args.each { nodeStr ->
        def node = normalizeNodeNumber(nodeStr)
        def response = get(client, "${node}", query)
        summarizeNode(node, response)
    }
} else {
    def response = get(client, "", query)
    summarize(response)
}
