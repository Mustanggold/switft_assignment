// Problem 1
print("Please Enter the first number:")
let num1 = Double(readLine()!)!

print("Please Enter the second number:")
let num2 = Double(readLine()!)!

func result(n1:Double, n2:Double) -> Double{
    return n1*n2 + n2*n2 - abs(n1-n2)
}
print("The result for question 1 is \(result(n1:num1,n2:num2))")


// Problem 2
print("Please Enter the first number:")
let n1 = Double(readLine()!)!

print("Please Enter the second number:")
let n2 = Double(readLine()!)!

print("Please Enter the third number:")
let n3 = Double(readLine()!)!

print("Please Enter the fourth number:")
let n4 = Double(readLine()!)!

print("The result for question 2 is \(max(n1,n2,n3,n4)-min(n1,n2,n3,n4)+pow(n1,n2)+abs(n3-n4))")


// Problem 3
print("Please Enter a positive number:")
if let x = readLine(){
    let length = x.count
    for _ in 1...length{
        print(x)
    }
}


// Problem 4
print("Enter your first name:")
if let fName = readLine(){
    print("Enter your last name:")
    if let lName = readLine(){
        print("Hi \(fName) \(lName), I hope you are doing well!")
    }
}


// Problem 5
print("First number:")
let x = Double(readLine()!)!

print("Second number:")
let y = Double(readLine()!)!

print("Third number:")
let z = Double(readLine()!)!

print(abs(max(x,y,z) - min(x,y,z)))

