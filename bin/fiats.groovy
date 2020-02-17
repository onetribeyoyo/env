import groovy.json.JsonOutput
import groovyx.net.http.RESTClient
import static groovyx.net.http.ContentType.JSON

@Grab(group = 'org.codehaus.groovy.modules.http-builder', module = 'http-builder', version = '0.6')


def restfulGet = { RESTClient restClient, String path, Map query = [] ->
    def resp = query ? restClient.get(path: path, query: query, contentType: JSON) : restClient.get(path: path, contentType: JSON)
    assert resp.status == 200
    return resp.data
}

def uri = "https://api-internal.target.com/available_to_promise/v2/"
def atpClient = new RESTClient(uri)
def query = [
    key: "RzS79Bx5UFyVNrMxUyQEfj4EZ4VXxGQe",
    inventory_type: "all",
    field_groups: "location_summary",
    multichannel_option: "none",
]

this.args.each { tcin ->
    def availability = restfulGet(atpClient, "${tcin}", query)
    //println "tcin: ${tcin} --------------------------------------------------------------------------------"
    //println availability
    //println "tcin: ${tcin} --------------------------------------------------------------------------------"
    //println JsonOutput.prettyPrint(JsonOutput.toJson(availability))

    println "tcin: ${tcin} onhand:available ---------------------------------------------------------------"
    availability.products.locations[0].each { location ->
        int onhand = location['onhand_quantity']
        int available = location['location_available_to_promise_quantity']
        if (onhand > 0) {
            //println "--------------------------------------------------------------------------------"
            println "${onhand}:${available} <-- ${location['location_type']}:${location['location_id']} ${location['store_address']}"
            //println JsonOutput.prettyPrint(JsonOutput.toJson(location))
        }
    }
}
