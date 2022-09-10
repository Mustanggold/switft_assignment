// Problem 7
struct Circle {
    var radius : Double;
    let PI : Double = 3.14;
    var circleArea : Double {
        get { return radius*radius*PI }
    }
}

let a = Circle(radius : 3);
print(a.circleArea)