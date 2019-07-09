import UIKit

var str = "Hello, playground"
print(str)

//wrong code
//var myDicationary = Dictionary<String, String="">()
//var myDicationary2 = ["key1":"obj1","key2":"obj2"]
//</String,>

var emptyDic: [String: String] = [:]
emptyDic["test1"] = "This is Object 1 for key test1"

var dicContainAra = ["outofOrders":[2,5,8,6,2,3],
                     "ascendingNums":[1,3,5,7,9]]
for key in dicContainAra.keys {
    if key == "outofOrders" {

        dicContainAra[key]?.sort(by: <)
    }
}
print(dicContainAra)





