// Problem 5
// Predicate1: Returns true if a number is odd
func predicate1(num : Int) -> Bool {
    return num % 2 != 0;
}

// Predicate2: Returns true if a number is prime
func predicate2(num : Int) -> Bool {
    if num < 2 {return false};
    for i in 2..<num {
        if num % i == 0 {
            return false    
        }
    }
    return true
}

// Predicate3: Returns true if a number is prime and odd
func predicate3(num : Int) -> Bool {
    return predicate1(num : num) && predicate2(num : num);
}

// Predicate4: Returns true if a number is divisible by 7
func predicate4(num : Int) -> Bool {
    return num % 7 == 0;
}
let numbers = [1,2,3,4,5,6,7,8,9,23,24,55,111] 
let predicateList = [predicate1, predicate2, predicate3, predicate4]

func filter(numList : [Int], predicates : [(Int)->Bool]) -> [Int]{
    var newList : [Int] = [];
    outerLoop : for number in numList {
        innerLoop : for predicate in predicates {
            if !predicate(number){
                continue outerLoop
            }   
        }
        newList.append(number)
    }
    return newList;
}

print(filter(numList: numbers, predicates: predicateList))





