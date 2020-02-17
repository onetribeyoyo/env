import groovy.json.JsonOutput

import groovyx.net.http.HttpResponseDecorator
import groovyx.net.http.RESTClient

import static groovyx.net.http.ContentType.*

import static groovy.io.FileType.*

@Grab(group = 'org.codehaus.groovy.modules.http-builder', module = 'http-builder', version = '0.6')


def restfulGet = { RESTClient restClient, String path, Map query = [] ->
    def start = System.currentTimeMillis()
    resp = query ? restClient.get(path: path, query: query, contentType: JSON) : restClient.get(path: path, contentType: JSON)
    def stop = System.currentTimeMillis()
    assert resp.status == 200
    //println "   GET ${restClient.uri}" + (query ? "${path}: ${query}" : path)
    //println "   GET ${restClient.uri}${path} ${query}"
    //println "       --> ${resp.statusLine} in ${stop-start}ms"
    return resp.data
}

def harrys_tcins = [
    51150426,
    51150626,
    51150636,
    51152207,
    51152214,
    51152268,
    51152281,
    51327330,
    51151520,
    51459684,
    51437352,
    51459735,
    51336125,
]
def the_8_28_tcins = [
    16601362,
    16743556,
    16743557,
    16744417,
    16744421,
    50021960,
    50021963,
    14129490,
    14503708,
    14537288,
    14537289,
    14702973,
    14950795,
    14951049,
    14985024,
    15222405,
    15343348,
    15830429,
    15830431,
    17119717,
    17119718,
    17119719,
    17119722,
    17119723,
    50906088,
    10648144,
    15103994,
    16200452,
    16251696,
    16251697,
    17309701,
    17309702,
    51281530,
    51021863,
    17055650,
    17055661,
    17201786,
    50697330,
    17304430,
]
def some_tcins = [
    //14654570,
    //10968045,
    51364366,
]

def uri = "https://api-internal.target.com/available_to_promise/v2/"
def atpClient = new RESTClient(uri)
def query = [
    key: "RzS79Bx5UFyVNrMxUyQEfj4EZ4VXxGQe",
    inventory_type: "all",
    field_groups: "location_summary",
    multichannel_option: "ship",
]

println uri

def outputFields = [
    products: [
        "available_to_promise_quantity",
        "online_available_to_promise_quantity",
        "stores_available_to_promise_quantity",
        "stores_hold_available_to_promise_quantity",
        "network_demand",
        "channel_holdback_target_estore",
        "channel_holdback_ebay",
        "online_protected_quantity",
    ]
]

def tcinList = some_tcins
//def tcinList = harrys_tcins
//def tcinList = the_8_28_tcins
tcinList.each { tcin ->
    def availability = restfulGet(atpClient, "${tcin}", query)
    println "${tcin} --------------------------------------------------------------------------------"
    println availability
    //println JsonOutput.prettyPrint(JsonOutput.toJson(availability))
    outputFields.each { key, fields ->
        fields.each { field ->
            println " ${availability[key][field]}	: ${key}.${field}"
        }
    }
}

println "done."
