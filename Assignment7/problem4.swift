import Foundation

class Student {
    var firstName : String
    var lastName : String
    var GPA : Double

    init(firstName : String, lastName : String, GPA : Double){
        self.firstName = firstName
        self.lastName = lastName
        self.GPA = GPA
    }
}

protocol View {
    var students : [Student] {get}
}

class Table : View {
    var delegate : View?
    var students : [Student]
    var numOfStudent : Int
    var rowHeight : Double

    init(numOfStudent : Int, rowHeight : Double, students : [Student]) {
        self.numOfStudent = numOfStudent
        self.rowHeight = rowHeight
        self.students = students
    }
    
    func printTable() {
        if (students.isEmpty) {
            print("No student in the system yet.")
        }
        for student in students {
            print("\(student.firstName) \(student.lastName), \(student.GPA)")
        }
    }
}