// Problem 5
import Foundation

func function(x : [Int], y : [Int]) -> Bool {
    return x.allSatisfy(y.contains) || y.allSatisfy(x.contains)
}

print(function(x:[1,2,3], y:[1,2]))
