import Foundation

protocol Protocol1 {
    var property1: Int? {get}
}
protocol Protocol2 {
    var property2: String {get}
}
protocol Protocol3 {
    var property3: (Int?)->String {get}
}


class TestClass : Protocol1, Protocol2, Protocol3 {
    var property1: Int?
    var property2: String
    var property3: (Int?)->String

    init(property1: Int?, property2: String, property3: @escaping (Int?)->String) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
    }
}

let lst : [TestClass] = []
var dics : [String : Protocol1 & Protocol2 & Protocol3] = [:]
dics["first"] = TestClass(property1 : 1, property2 : "1", property3 : {(Int) in String(Int!)})
