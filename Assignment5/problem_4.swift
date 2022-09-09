// Problem 4
import Foundation

class Search {
    var numArray = [1,2,3,4,5,6];

    func reset(){
        numArray = [];
    }

    func randomFill() {
        for _ in 0..<10 {
            let num = Int.random(in: 1...100);
            numArray.append(num);
        }  
    }

    static func linearSearch(lst : [Int], n : Int) -> Bool{
        return lst.contains(n);
    }
}

var search1 = Search();
print(search1.numArray);

search1.reset();
print(search1.numArray);

search1.randomFill();
print(search1.numArray);

print(Search.linearSearch(lst: [1,2,3,4,5,6], n: 7));