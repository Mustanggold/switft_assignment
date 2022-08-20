// Problem 6
import Foundation

func function() -> [Int] {
    var list : [Int] = []
    while(true){
        print("Enter an integer:")
        if let input = readLine() {
            let myIntegerVariable = Int(input) ?? nil
            if input.isEmpty{
               break
            }
            if !list.contains(myIntegerVariable) {
                list.append(myIntegerVariable)
            }else if list.contains(myIntegerVariable) {
                print("The integer is already in the list")
            }
        }    
        
    }
    return list
}
print(function())