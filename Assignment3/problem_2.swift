// Problem 2
func isPrimeNum(num : Int) -> Bool {
    for i in 2..<num {
        if (num % i == 0){
            return false
        }
    }
    return true
}

print(isPrimeNum(num :71))