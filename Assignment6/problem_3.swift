// Problem 3
import Foundation

struct MyNotification {
    var seen : Bool;
    var totalSeen : Int;

    func fillIt(size : Int) -> [Int]{
        var intList : [Int] = [];
        for _ in 1...size {
            let num = Int.random(in: 1...100);
            intList.append(num);
        }
        return intList;
    }

    func searchIt(numList : [Int]) -> [Int]{
        var p1Holds = 0;
        var p1Total = 0;
        var p2Holds = 0;
        var p2Total = 0;
        for num in numList {
            if predicate1(num : num) {
                p1Holds += 1;
            }
            if predicate2(num : num) {
                p2Holds += 1;
            }
            p1Total += 1;
            p2Total += 1;
        }
        return [p1Holds,p1Total,p2Holds,p2Total]
    }

    func predicate1(num : Int) -> Bool {
        return num % 3 == 0;
    }

    func predicate2(num : Int) -> Bool {
        return num % 2 == 0;
    }
}


struct MyObserver {
    var predicate1Holds: Int = 0 {
        willSet(newTotalSteps) {}
    }
    var predicate1Total: Int = 0 {
        willSet(newTotalSteps) {}
    }

    var predicate2Holds: Int = 0 {
        willSet(newTotalSteps) {}
    }
    var predicate2Total: Int = 0 {
        willSet(newTotalSteps) {}
    }
}

let notification = MyNotification();
let arr = notification.fillIt();
let result = notification.searchIt(arr);

let observer = MyObserver();
observer.predicate1Holds = result[0];
observer.predicate1Total = result[1];
observer.predicate2Holds = result[2];
observer.predicate2Total = result[3];

