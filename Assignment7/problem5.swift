import Foundation

protocol SpecialStringProtocol {
    //it checks whether a given condition is met on the current string
    func verifiableStringForACondition( _ conditionPredicate: (String)->Bool) -> Bool
    /*it checks whether the string is a double repeated string. For instance abab is a double 
    repeated because the ab is repeated 2 times. Or AliAli is also double repeated.*/
    func repeatedString()-> Bool
}

class TestClass : SpecialStringProtocol {
    var str : String
    var delagete : SpecialStringProtocol?

    init(str : String) {
        self.str = str
    }

    func verifiableStringForACondition( _ conditionPredicate: (String)->Bool) -> Bool{
        return conditionPredicate(self.str);
    }

    func repeatedString()-> Bool {
        let length = self.str.count
        if (length % 2 != 0) {
            return false
        }
        let firstHalf = self.str.prefix(length/2)
        let secondHalf = self.str.suffix(length/2)

        if (firstHalf != secondHalf) {
            return false
        }
        return true
    }
}


let test = TestClass(str : "AbcAbcc")
print(test.verifiableStringForACondition({(String) in String.starts(with: "A")}))
print(test.repeatedString())