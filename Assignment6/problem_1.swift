// Problem 1
import Foundation

struct Student {
    var Name : String = "";
    var Scores : [Double] = [];
    var average : Double {
        return Scores.reduce(0, +) / Double(Scores.count);
    }
}

let student1 = Student(Name: "Nio", Scores: [88,76,78,92]);
let student2 = Student(Name: "Mio", Scores: [87,70,60,55]);
let student3 = Student(Name: "Lio", Scores: [80,79,100,100]);
var students : [Student] = [];
students.append(student1);
students.append(student2);
students.append(student3);

students = students.sorted(by: {$0.average > $1.average});
print(students[0]);