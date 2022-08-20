// Problem 3
func function() -> [String]{
    var list:[String] = []
    while(true){
        print("Enter a word")
        if let input = readLine(){
            if input.isEmpty {
                break
            }
            if list.contains(input) {
                continue
            }
            list.append(input)
        }
    }
    return list
}
print(function())