// Problem 2
struct Math {
    var x : Int;
    var y : Int;

    mutating func reset() {
        x = 0;
        y = 0;
    }

    func printPoint(){
        print("the point is at coordinate [\(x),\(y)] where x and y are the x and y coordination of the input point")
    }

    static func average(points : [Int], char : String) -> Int{
        let sum = points.reduce(0, +);
        let average = sum / points.count;
        if (char == "x" || char == "y") {
            return average;
        }
        return 0
    }

    static func vectorAverage(points : [Int]) -> Math {
        let newMath = Math(x : points[0], y : points[1]);
        return newMath;
    }
}

let x = Math.average(points : [1,2,6], char: "x");
let y = Math.average(points : [2,2,17], char: "y");
let newMath = Math.vectorAverage(points : [x,y]);
newMath.printPoint();