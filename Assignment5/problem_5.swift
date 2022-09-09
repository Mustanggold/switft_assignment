// Problem 4
import Foundation

struct Student {
    var firstName : String;
    var lastName : String;
    var address : String;
    var yearOfBirth : String;
    var gpa : Double;

    static func printStudent(student : Student) {
        print("first name: \(student.firstName)\n" +
                "last name: \(student.lastName)\n" +
                "address: \(student.address)\n" +
                "year of birth: \(student.yearOfBirth)\n" +
                "gpa: \(student.gpa)")
    }
}

class Classroom {
    var students : [Student] = [];

    func generateList() {
        let student1 = Student(firstName: "Tim", lastName: "Horton", address: "999 Stress", yearOfBirth: "1990", gpa: 8.0);
        let student2 = Student(firstName: "Jim", lastName: "Korton", address: "999 Stress", yearOfBirth: "1990", gpa: 10.0);
        let student3 = Student(firstName: "Aim", lastName: "Lorton", address: "999 Stress", yearOfBirth: "1990", gpa: 12.0);
        students.append(student1);
        students.append(student2);
        students.append(student3);
    }

    func getHighestGpa() {
        students = students.sorted(by: { $0.gpa > $1.gpa })
        Student.printStudent(student : students[0])
    }
}

var newClass = Classroom();
newClass.generateList();
newClass.getHighestGpa();
