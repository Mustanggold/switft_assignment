import Foundation

enum StringError : Error {
    case InvalidStringFormatForIntConversionError
    case InvalidEmailFormatError
    case NotValidPassword(numberNeeded: Int)
}

extension String {
    func convertToInt() throws {
        if Int(self) != nil {
            print("It can be conveted to Integer")
        } else {
            print("Can not be conveted to Integer")
            throw StringError.InvalidStringFormatForIntConversionError
        }
    }

    func validEmailFormat() throws {
        if self.range(of: ".+@.+\\..+", options: .regularExpression) != nil { 
          print("Correct email format")
        } else {
            print("Incorrect email format")
          throw StringError.InvalidEmailFormatError
        }
    }

    func validPasswordLength() throws {
        if self.count >= 8 {
            print("Password length is valid")
        } else {
            print("Password length is invalid")
            throw StringError.NotValidPassword(numberNeeded: 8 - self.count)
        }
    }
}


class TestExtension {
    static func convertStringToInt (_ word: String) -> Int? {
        do {
            try word.convertToInt()
        } catch StringError.InvalidStringFormatForIntConversionError {
            return -1
        } catch {
            
        }
        return Int(word)
    }

    static func isItAnEmail(_ word: String)-> Bool {
        do {
            try word.validEmailFormat()
        } catch StringError.InvalidEmailFormatError {
            return false
        } catch {
            
        }
        return true
    }

    static func validatePassword(_ password: String)-> Bool {
        do {
            try password.validPasswordLength()
        } catch StringError.NotValidPassword(numberNeeded: 8 - password.count) {
            return false
        } catch {
            
        }
        return true
    }
}


var str = "123"
var email = "123@123.com"
var password = "12345678"

print(TestExtension.convertStringToInt(str)!)
print(TestExtension.isItAnEmail(email))
print(TestExtension.validatePassword(password))