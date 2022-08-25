// Problem 1
func function(num1 : Double, num2 : Double, optr : String ) -> Double{
    if (num1 != 0 && num2 == 0 && optr.contains("/")){
        print("the operation is not possible because one number is zero")
        return -1;
    }
    switch (optr){
        case "+":
            return num1 + num2
        case "-":
            return num1 - num2
        case "*":
            return num1 * num2
        case "/":
            return num1 / num2
        default:
            return -1
    }
}
print(function(num1 : 10.0, num2 : 0.0, optr : "/"))