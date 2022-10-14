import Foundation

extension String {
    func isPalindrome () -> Bool {
        return self == self.reverseIt()
    }

    func reverseIt()-> String {
        var word : [Character] = []
        for char in self {
            word.insert(char, at: 0)
        }
        return String(word)
    }
}

extension String {
    var numberOfDigit : Int {
        var count = 0
        for i in self {
            if (Int(String(i)) == nil) {
                continue
            }
            count += 1
        }
        return count
    }

    var upperCase : String {
        return self.uppercased()
    }
}

var str = "1ollo1"
print(str.isPalindrome())

print(str.numberOfDigit)
print(str.upperCase)
