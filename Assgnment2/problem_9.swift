// Problem 9
import Foundation

let list = [1,2,2,3]

func function(list : [Int]) -> Int{
    
    var list2 = list
    list2.sort()
    
    for i in stride(from: 0, to: list2.count-2, by: 2) {
        if (list2[i] == list[i+1]){
            continue
        } 
        return list[i]
    }
    return list2[list2.count-1]
}
print(function(list : list))