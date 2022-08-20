// Problem 10
import Foundation

let list1 = [1,3,1,2,2,3]
let list2 = [4,5,6,6]
let list3 = [7,7,8,9]

func function(list1 : [Int], list2 : [Int], list3 : [Int]) -> [Int]{
    let set1 = Set(list1)
    let set2 = Set(list2)
    let set3 = Set(list3)

    return Array(set1.union(set2).union(set3))
}
print(function(list1 : list1, list2 : list2, list3 : list3))