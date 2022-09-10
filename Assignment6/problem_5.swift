// Problem 5
func palindromeIndex(s: String) -> Int {
    guard s.count > 1 else { return -1 }
    
    let a = Array(s)
    var f = 0
    var l = a.count - 1

    while(f < l) {
        let fc = a[f]
        let lc = a[l]

        if (fc == lc) {
            f += 1
            l -= 1
        } else if (lc == a[f + 1]) {
            return f
        } else if (fc == a[l - 1]) {
            return l
        } else {
            return -1
        }
    }
    
    return -1
}
print(palindromeIndex(s : "abaa"))