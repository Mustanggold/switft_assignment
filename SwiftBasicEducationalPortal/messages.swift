import Foundation

var usernameToken = ""
var passwordToken = ""

let loginViewUsername = """

Please enter your account to login:
************************************************************
Username:  
"""
let loginViewPassword = "Password: "

let welcomeMessage = """

************************************************************
Welcome to Cornerstone International College of Canada.
************************************************************
"""

let failedLoginMessage = """

************************************************************
Your account does not exist. Please try again!
************************************************************
"""

let mainMenu = """
************************************************************
Select from the options:
************************************************************
—-[1] Print my enrolment certificate
—-[2] Print my courses
—-[3] Print my transcript
—-[4] Print my GPA
—-[5] Print my ranking among all students in the college
—-[6] List all available courses
—-[7] List all students
-—[8] Logout
-—[9] Exit
************************************************************
Enter the number corresponding to each item to proceed:
"""

func printEnrollmentCertificate(gender : String, fullname : String, studentId : String, grade : String, admissionYear : String, courses : String, address : String) -> String{
    let namePrefix1 = gender == "male" ? "Sir" : "Madam"
    let namePrefix2 = gender == "male" ? "Mr." : "Ms."
    let heOrShe1 = gender == "male" ? "He" : "She"
    let heOrShe2 = gender == "male" ? "he" : "she"
    let message = """
    
    Dear \(namePrefix1),
    
    This is to certify that \(namePrefix2)\(fullname) with student id \(studentId) is a student at grade \(grade) at CICCC. \(heOrShe1) was admitted to our college in \(admissionYear) and has taken \(courses) course(s). Currently \(heOrShe2) resides at \(address).
    
    If you have any question, please don’t hesitate to contact us.
    Thanks,
    Williams,
    """
    return message
}

func printMyCourses(gender : String, fullname : String, courseList : [String], currentCourseList : [String : String]) -> String {
    let namePrefix = gender == "male" ? "Mr." : "Ms."
    var message = """
        
        Hi \(namePrefix)\(fullname),
        You have taken the following courses:
        """

    var i = 1
    for course in courseList {
        
        var str = "" 
        if currentCourseList[course] != nil {
           str = "\n\(i))  \(course): \(currentCourseList[course]!)"
        } else {
           str = "\n\(i))  \(course): unknow course"
        }
        message += str
        i += 1
    }
    return message
}

func printMyTranscript(gender : String, fullname : String, studentTranscript : [String : String]) -> String {
    let currentCourseList : [String : String] = getCourseList()
    let namePrefix = gender == "male" ? "Mr." : "Ms."
    var message = """
        
        Hi \(namePrefix)\(fullname),
        Here is your transcript:
        
        """
    
    var i = 1
    for (key,value) in studentTranscript {
        var str = "" 
        str = "\n\t\(i))  \(key): \(currentCourseList[key] ?? "empty" ): \(value)"
        message += str
        i += 1
    }
    let gpa = getGPA()
    message += "\n\t\tYOUR GPA IS: \(gpa)"
    return message
}

func printGPA(gender : String, fullname : String) -> String {
    let namePrefix = gender == "male" ? "Mr." : "Ms."
    let gpa = getGPA()
    let message = """
        
        Hi \(namePrefix)\(fullname),
        Your GPA is \(gpa):
        """
    return message
}

func printRankingAndGPA(studentId : String, gender : String, fullname : String) -> String {
    let namePrefix = gender == "male" ? "Mr." : "Ms."
    let allStudentNameAndId = getAllStudentNameAndId()
    var nameAndGPA : [String : String] = [:]
    
    for (id, _) in allStudentNameAndId {
        var gpa = 0.0
        let studentTranscript = getStudentTranscript(studentId: id)
        for (_, value) in studentTranscript {
            gpa += Double(value) ?? 0
        }
        nameAndGPA[id] = String(gpa/Double(studentTranscript.count))
    }
    let sorednameAndGPA = nameAndGPA.sorted(by: < )
    var position = 1
    var gpa = ""
    for (key, value) in sorednameAndGPA {
        if key == studentId && nameAndGPA[key] == "nan" {
            return """
                    
                    Hi \(namePrefix) \(fullname),
                    Sorry, you don't have GPA at this moment.
                    """
        }
        if key == studentId {
            gpa = value
            break
        }
        position += 1
    }
    return """
            
            Hi \(namePrefix) \(fullname),
            Your GPA is \(gpa) and therefore your rank is \(position).
            """
}

let availableCourses = """

The following courses are offered in CICCC:

1)	MADP101: Objective-C
2)	MADP102: Object-Oriented Programming
3)	MADP201: Problem Solving
4)	MADP202: Project Management
5)	MADP301: Java Programming
6)	MADP302: Web Development
7)	MADP401: Android Programming
8)	MADP402: iOS Applications
"""

func printAllStudents(allStudentInfo : [String : String]) -> String {
    var message = """
        
        There are \(allStudentInfo.count) students in CICCC as following:
        
        """
    let sortedList = allStudentInfo.sorted(by: <)
    var i = 1
    for (key, value) in sortedList {
        let addOn = "\n\(i)) \(value): \(key)"
        message += addOn
        i += 1
    }
    return message
}