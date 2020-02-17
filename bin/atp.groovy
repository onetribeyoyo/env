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
    multichannel_option: "ship",
]

def tcinList = this.args

println "tcin atp online store"
println "--------- --------- --------- ---------"
tcinList.each { tcin ->
    def availability = restfulGet(atpClient, "${tcin}", query)
    int atp    = availability.products[0].available_to_promise_quantity
    int online = availability.products[0].online_available_to_promise_quantity
    int stores = availability.products[0].stores_available_to_promise_quantity
    println "${tcin} ${atp} ${online} ${stores}"
}

//println uri
//tcinList.each { tcin ->
//    def availability = restfulGet(atpClient, "${tcin}", query)
//    println "${tcin} --------------------------------------------------------------------------------"
//    //println availability
//    //println JsonOutput.prettyPrint(JsonOutput.toJson(availability))
//
//    [
//        products: [
//            "available_to_promise_quantity",
//            "online_available_to_promise_quantity",
//            "stores_available_to_promise_quantity",
//            "stores_hold_available_to_promise_quantity",
//            "network_demand",
//            "channel_holdback_target_estore",
//            "channel_holdback_ebay",
//            "online_protected_quantity",
//        ]
//    ].each { key, fields ->
//        fields.each { field ->
//            ////println " ${availability[key][field]}	: ${key}.${field}"
//        }
//    }
//}
