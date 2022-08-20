// Problem 4
import Foundation

func function(x : Double, y : Double) -> Double {
    return pow(x,4.0) + 5*pow(x,2.0) + pow(y, 3.0) + pow(y, 2.0) + 1
}
print(function(x: 2, y : 3))