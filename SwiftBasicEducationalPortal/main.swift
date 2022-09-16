import Foundation

// Determine the file name
let courses = "Courses.txt"
let accounts = "Accounts.txt"
let students = "Students.txt"
let studentsCourses = "StudentsCourses.txt"


func readFile(filename : String) -> [String] {
    var fileContent : [String] = []
    // Read the contents of the specified file
    let contents = try! String(contentsOfFile: filename)
    
    // Split the file into separate lines
    let lines = contents.split(separator:"\n")
    
    // Iterate over each line and print the line
    for line in lines {
        fileContent.append(String(line))
    }
    return fileContent
}

func login() -> Bool {
    print(loginViewUsername)
    if let inputUsername = readLine() {
        print(loginViewPassword)
        if let inputPassword = readLine() {
            let account = readFile(filename: accounts)
            for i in stride(from: 0, to: account.count-1, by: 2) {
                let userList = account[i].split(separator: ":")
                let passwordList = account[i+1].split(separator: ":")
                let user = userList[1].replacingOccurrences(of: "\"", with: "")
                let password = passwordList[1].replacingOccurrences(of: "\"", with: "")
                if inputUsername == user && inputPassword == password {
                    usernameToken = user
                    passwordToken = password
                    return true
                }
            }      
        }
    }
    return false
}

func getStudentInfo(username : String) -> [String : String] {
    var currentStudentInfo : [String : String] = [:]
    
    let currentUser = Int(username.suffix(1))
    let startIndex = currentUser!*7-7
    let endIndex = currentUser!*7-1
    
    let studentInfo = readFile(filename: students)
    for info in studentInfo[startIndex...endIndex] {
        let infoList = info.split(separator: ":")
        let key = infoList[0].suffix(infoList[0].count-1)
        let value = infoList[1].replacingOccurrences(of: "\"", with: "")
        currentStudentInfo[String(key)] = value
    }
    return currentStudentInfo
}

func getAllStudentNameAndId() -> [String : String] {
    var allStudentInfo : [String : String] = [:]
    
    let studentInfo = readFile(filename: students)
    
    for i in stride(from: 0, to: studentInfo.count-1, by: 7) {
        let idList = studentInfo[i].split(separator: ":")
        let key = idList[1].replacingOccurrences(of: "\"", with: "")
        let nameList = studentInfo[i+1].split(separator: ":")
        let value = nameList[1].replacingOccurrences(of: "\"", with: "")
        allStudentInfo[String(key)] = value
    }
    return allStudentInfo
}

func getCourseList() -> [String : String] {
    var courseList : [String : String] = [:]
    let courses = readFile(filename: courses)
    for i in stride(from: 0, to: courses.count-1, by: 2) {
        let courseIdList = courses[i].split(separator: ":")
        let courseNameList = courses[i+1].split(separator: ":")
        let courseId = courseIdList[1].replacingOccurrences(of: "\"", with: "")
        let courseName = courseNameList[1].replacingOccurrences(of: "\"", with: "")

        courseList[String(courseId)] = String(courseName)
    }
    
    return courseList
}

func getStudentTranscript(studentId : String) -> [String : String] {
    var currentStudentTranscript : [String : String] = [:]
    let courses = readFile(filename: studentsCourses)
    for i in stride(from: 0, to: courses.count-1, by: 3) { 
        let studentIdentityList = courses[i].split(separator: ":")
        let studentIdentity = studentIdentityList[1].replacingOccurrences(of: "\"", with: "")
        if studentIdentity == studentId {
            let courseIdList = courses[i+1].split(separator: ":")
            let courseId = courseIdList[1].replacingOccurrences(of: "\"", with: "")
            
            let courseMarkList = courses[i+2].split(separator: ":")
            let courseMark = courseMarkList[1].replacingOccurrences(of: "\"", with: "")
            
            currentStudentTranscript[String(courseId)] = String(courseMark)
        }  
    }
    return currentStudentTranscript
}

func getGPA() -> String {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    let studentId = currentStudentInfo["studentID"] ?? ""
    
    let studentTranscript = getStudentTranscript(studentId: studentId)
    var gpa = 0.0
    for (_, value) in studentTranscript {
        gpa += Double(value) ?? 0
    }
    return String(gpa/Double(studentTranscript.count))
}


func runApp() {
    var state = true
    // Login Screen
    while !login() {
        print(failedLoginMessage)
        sleep(2)
    }
    print(welcomeMessage)

    //Main Menu
    while(state){
        sleep(2)
        print("\n")
        print(mainMenu)
        if let selection = readLine(){
            switch (selection) {
                case "1":
                    selection1()
                case "2":
                    selection2()
                case "3":
                    selection3()
                case "4":
                    selection4()
                case "5":
                    selection5()
                case "6":
                    selection6()
                case "7":
                    selection7()
                case "8":
                    usernameToken = ""
                    passwordToken = ""
                    runApp()
                case "9":
                    state = false
                    break
                default:
                    print("\nInvalid input")
            }
        }
    }
}

runApp()


