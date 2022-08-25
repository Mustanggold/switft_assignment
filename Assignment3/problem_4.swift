// Problem 4
func patternGenerator (num : Int, pattern : String) {
    
    if (pattern.contains("1")){
        var spaceNum = 0
        for i in stride(from: num, to: 0, by: -2) {
            print("\(String(repeating: " ", count: spaceNum) + String(repeating: "*", count: i))")
            spaceNum+=1
        }
    } else if (pattern.contains("2")){
        for i in (1...num).reversed() {
            print(String(repeating: "*", count: i))
        }
    } else if (pattern.contains("3")) {
        for i in (1...num) {
            print(String(repeating: "*", count: i))
        }
    }
}
patternGenerator(num : 11, pattern : "SHAPE1")
print()
patternGenerator(num : 5, pattern : "SHAPE2")
print()
patternGenerator(num : 9, pattern : "SHAPE3")

