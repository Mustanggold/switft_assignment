import Foundation

class EducationPortal{
    //student numbers -> list of grades
    var marks:[String:[Int]]=["781214":[72,63,70], "341234":[80,46]]
    //student Ids -> numbers
    var ids:[Int:String]=[1:"781214", 2:"341234", 3:"568912"]
    //student numbers -> names
    var names:[String:String]=["781214":"Ali", "341234":"Peter", "568912":"Sam"]
    //complete the code using subscripts (only® use subscripts as much as possible)
    subscript(id : Int, numOfGrades : Int) ->  Double{
        let grades = marks[ids[id]!]
        let lst = grades![0...numOfGrades - 1]
        return Double(lst.reduce(0, +) / numOfGrades)
    }
    
    subscript(num: String) -> String {
        return names[num]!
    }
    
    subscript(num: Int) -> String {
        return names[ids[num]!]!
    }
}

extension EducationPortal {
    func addStudent(_ id: Int, _ number: String, _ grades: [Int]) {
        self.ids[id] = number
        self.names[number] = ""
        self.marks[number] = grades
    }
}

let port = EducationPortal()
port.addStudent(4, "881299", [65, 22, 78])
print(port[4, 3])
