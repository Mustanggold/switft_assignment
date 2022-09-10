// Problem 4
class MySort {
    var items : [Int] = [];
    var sorting : ([Int]) -> Void {
        return {(items) in print(items)};
    }
    
    class MyBubbleSort : MySort {
        override var sorting : ([Int]) -> Void {
            get {return bubbleSort}
        }
        func bubbleSort(arr: [Int]) -> Void {
            var dataSet = arr
            let last_position = dataSet.count - 1
            var swap = true
            while swap == true {
                swap = false
                for i in 0..<last_position {
                    if dataSet[i] > dataSet[i + 1] {
                        let temp = dataSet [i + 1]
                        dataSet [i + 1] = dataSet[i]
                        dataSet[i] = temp
                        
                        swap = true
                    }
                }
            }
            print(dataSet)
        }
    }

    class MyInsertionSort : MySort{
        override var sorting : ([Int]) -> Void {
            get {return insertionSort}
        }
        func insertionSort(arr: [Int]) -> Void {
            var a = arr
            for x in 1..<a.count {
                var y = x
                let temp = a[y]
                while y > 0 && temp < a[y - 1] {
                a[y] = a[y - 1]                // 1
                y -= 1
                }
                a[y] = temp                      // 2
            }
            print(a)
        }
    }
}

let arr = [3,41,2,15,321];
let mySortMain = MySort();
mySortMain.sorting(arr)

let myBubbleSortNested = MySort.MyBubbleSort();
myBubbleSortNested.sorting(arr)

let myInsertionSortNested = MySort.MyInsertionSort();
myInsertionSortNested.sorting(arr)
