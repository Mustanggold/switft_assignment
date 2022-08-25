// Problem 3
func isPrimeNum(num : Int) -> Bool {
    for i in 2..<num {
        if (num % i == 0){
            return false
        }
    }
    return true
}

func nextPrimeNum(function : (Int) -> Bool , num : Int) -> Int {
    var state = true
    var returnNum = num + 1
    while (state) {
        if (!function(returnNum)){
            returnNum+=1
        } else {
            state = false
        }
    }
    return returnNum
}

print(nextPrimeNum(function : isPrimeNum, num : 5))