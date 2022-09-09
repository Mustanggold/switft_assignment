// Problem 3
func sum(x : Int, y : Int) -> Double {
    return Double(x + y);
};


func division(x : Int, y : Int) -> Double {
    return Double(x / y);
}

func difference(x : Int, y : Int) -> Double {
    return Double(x - y);
}

func power(x : Int, y : Int) -> Double {
    var result = x;
    for _ in 1..<y {
        result *= x
    }
    return Double(result);
}

func multiplication(x : Int, y : Int) -> Double {
    return Double(x * y);
}

let operators = [
    "sum" : sum,
    "division" : division,
    "difference" : difference,
    "power" : power,
    "multiplication" : multiplication,
]

func calculator(calOperator : String, calOperation : (Int, Int) -> Double) -> (Double, String)? {
    if operators[calOperator] != nil {
        return (calOperation(5, 10), calOperator);
    } else {
        return nil
    }
}

print(calculator(calOperator : "sum", calOperation: sum))