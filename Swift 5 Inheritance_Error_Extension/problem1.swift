import Foundation

class Shape {
    var area : Double {
        return 0
    }
    
    var circumference : Double {
        return 0
    }

}

class Rectangle: Shape {
    var side1 : Double 
    var side2 : Double
    
    override var area : Double {
        return side1 * side2
    }
    override var circumference : Double {
        return (side1 + side2) * 2
    }
    init(side1 : Double, side2 : Double) {
        self.side1 = side1
        self.side2 = side2
    }
}

class Square: Shape {
    var side : Double 
    
    override var area : Double {
        return side * side
    }
    override var circumference : Double {
        return side * 4
    }
    init(side : Double) {
        self.side = side
    }
}

class Circle: Shape {
    var radius : Double
    let PI : Double = 3.14

    override var area : Double {
        return PI * radius * radius
    }

    override var circumference : Double {
        return 2 * PI * radius
    }

    init(radius : Double) {
        self.radius = radius
    }
    
}

let rectangle = Rectangle(side1 : 10, side2 : 5)
let square = Square(side : 4)
let circle = Circle(radius : 3)

print(rectangle.area)
print(square.circumference)
print(circle.area)