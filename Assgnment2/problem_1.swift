// Problem 1
let list = [1,3,2,5]
func isSortedAces(l: [Int]) -> Bool{
    for index in 0..<l.count-1 {
        if(l[index]>l[index+1]){
            return false
        }
    }
    return true
}

print(isSortedAces(l:list))
