// Problem 8
import Foundation

func function(num : Int!) {
    if num >= 50 {
        var dics : [Int:[Int]] = [:]
        for i in 2...9{
            var value  = i
            var list : [Int] = []
            
            while value <= num {
                list.append(value)
                value += i 
            }
            dics[i] = list
            print("\(i): \(dics[i]!)")
        }   
    }
}
function(num : 100)