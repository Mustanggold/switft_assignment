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
var ep = EducationPortal()
//it should calculate the average of the first 3 grades of the student whose ID is 1
let st1Avg = ep[1, 3]
print(st1Avg)
//It should give the name of the student whose number is 781214
let studentName = ep["781214"]
print(studentName)
//it should give the name of student whose ID is 2
let studentNumber = ep[2]
print(studentNumber)
