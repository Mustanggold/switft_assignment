// Problem 3
// import Foundation

enum Calculator {
    case sum, subtraction, multiplication, division

    static func calculate(num1 : Int, num2 : Int, opt : Calculator) -> Int{
        switch (opt) {
            case .sum:
                return num1 + num2;
            case .subtraction:
                return num1 - num2;
            case .multiplication:
                return num1 * num2;
            case .division:
                return num1 / num2;
        }
    }
}

print(Calculator.calculate(num1: 2, num2: 3, opt: .subtraction));