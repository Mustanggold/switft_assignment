//Problem 2
// func1
var func1 : (Int, Int) -> Int 
func function1(x : Int, y : Int) -> Int {
    return x+y
}

// func2
var func2 : (String) -> Void
func function2(str : String) {
    print("This is \(str)")
}

// func3
var func3 : ()-> Int
func function3() -> Int {
    return 0
}

// func4
var func4 : () -> [() -> Void]
func function4() -> [()-> Void] {
    return [
        {() in print("One")},
        {() in print("Two")},
    ]
}

// func5
var func5 : () -> [() -> Void]
func function5() -> [() -> Void] {
    return [
        {() in print("three")},
        {() in print("four")},
    ]
}

// func6
var func6 : ([(Int)->Void]) -> [(Int)->Void]
func function6(lst : [(Int)->Void]) -> [(Int)->Void] {
    return [
        {(i) in print("five")},
        {(i) in print("six")},
    ]
}

// func7
var func7 : ([(Int)->Void]?) -> [(Int)->Void]?
func function7(lst : [(Int)->Void]?) -> [(Int)->Void]? {
    if lst != nil {
        return [
            {(i) in print("seven")},
            {(i) in print("eight")},
        ]
    } else {
        return nil
    }
}

// func8
var func8 : ([(Int)->Void]?) -> [(Int)->Void]?
func function8(lst : [(Int)->Void]?) -> [(Int)->Void]? {
    if lst != nil {
        return [
            {(i) in print("ten")},
            {(i) in print("eleven")},
        ]
    } else {
        return nil
    }
}

// func9
var func9 : () -> ((Int)->Int, Int)?
func function9() -> ((Int)->Int, Int)? {
    let x = 1;
    let y = 2;
    return ({(z : Int) in x}, y)
}