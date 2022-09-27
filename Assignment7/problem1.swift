import Foundation

protocol SomeProtocol1{
    var property1: Int {get}
    var property2: String {get set}
    var property3: (()->Int)? {get}
    static var property4: String? {get set}
    static func method1(arg param: Int)
    func method2(arg param: Int) -> Int?
    mutating func method3()-> String? 
} 

class Class1 : SomeProtocol1 {
    var property1 : Int {return 1}
    var property2 : String {get{"1"} set{self.property2 = newValue}}
    var property3 : (()->Int)? {{() in self.property1 + 1}}
    static var property4 : String? {get{"1"} set{self.property4 = newValue}}
    static func method1(arg tenTimes: Int) {
        print(tenTimes * 10)
    }
    func method2(arg tenTimes: Int) -> Int? {
        return tenTimes * 10
    }
    func method3() -> String? {
        return "This is a mutating func"
    }
}

struct Struct1 : SomeProtocol1  {
    var property1 : Int {return 1}
    var property2 : String {get{"1"} set{self.property2 = newValue}}
    var property3 : (()->Int)? {{() in self.property1 + 1}}
    static var property4 : String? {get{"1"} set{self.property4 = newValue}}
    static func method1(arg tenTimes: Int) {
        print(tenTimes * 10)
    }
    func method2(arg tenTimes: Int) -> Int? {
        return tenTimes * 10
    }
    func method3() -> String? {
        return "This is a mutating func"
    }
}

enum Enum1 : SomeProtocol1  {
    var property1 : Int {return 1}
    var property2 : String {get{"1"} set{self.property2 = newValue}}
    var property3 : (()->Int)? {{() in self.property1 + 1}}
    static var property4 : String? {get{"1"} set{self.property4 = newValue}}
    static func method1(arg tenTimes: Int) {
        print(tenTimes * 10)
    }
    func method2(arg tenTimes: Int) -> Int? {
        return tenTimes * 10
    }
    func method3() -> String? {
        return "This is a mutating func"
    }
}