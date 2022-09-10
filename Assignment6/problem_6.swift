// Problem 6

var list1 = [2,1,3,4,5,10,11]
var list2 = [2,1,2,3,3,3,4,5,5,11,13]
list1 = list1.sorted(by: <)
list2 = list2.sorted(by: <)

var index1 = 0;
var index2 = 0;
while(index1 < list1.count && index2 < list2.count) {
    if list1[index1] == list2[index2] {
        list2.remove(at:index2);
        index1 += 1;
    } else {
        index2 += 1;
    }
    if index2 == list2.count {
        index2 = 0;
        index1 += 1;
    }
}
print(list2)
