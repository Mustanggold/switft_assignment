// Problem 2
var list = [1,2,3,7,2,6,7,8,9]

func isSortedAces(l: [Int]) -> Bool{
    for index in 0..<l.count-1 {
        if(l[index]>l[index+1]){
            return false
        }
    }
    return true
}

func isSortedDes(l: [Int]) -> Bool{
    for index in 0..<l.count-1 {
        if(l[index]<l[index+1]){
            return false
        }
    }
    return true
}

func partiallySorted(lst : inout [Int]) -> Bool {
    let lst1 = lst
    for i in 0..<lst1.count{
        lst = lst1
        lst.remove(at:i)
        if isSortedAces(l : lst) || isSortedDes(l : lst){
            return true
        }
    }
    return false
}

print(partiallySorted(lst: &list))