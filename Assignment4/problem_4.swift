// Problem 4
func sorter(words : [String], comparator :  (String,String)->Bool) -> [String] {
    return  words.sorted(by: {comparator($0, $1)})
}

var List1 = ["one", "two", "three", "four", "five"]
func function1(a : String, b : String) -> Bool {
    return a > b;
}
print(sorter(words: List1, comparator: function1))


var List2 = ["one", "two", "three", "four", "five"]
func function2(a : String, b : String) -> Bool {
    return a < b;
}
print(sorter(words: List2, comparator: function2))

var List3 = ["aa", "aba", "b", "aabbb"]
func function3(a : String, b : String) -> Bool {
    return a.count > b.count;
}
print(sorter(words: List3, comparator: function3))
