import Foundation

func selection1() {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    
    let gender = currentStudentInfo["gender"] ?? ""
    let fullname = currentStudentInfo["name"] ?? ""
    let studentId = currentStudentInfo["studentID"] ?? ""
    let grade = currentStudentInfo["grade"] ?? ""
    let admissionYear = currentStudentInfo["admission_year"] ?? ""
    let courses = currentStudentInfo["courses"] ?? ""
    let coursesList = courses.components(separatedBy: ",")
    let coursesNum = String(coursesList.count)
    let address = currentStudentInfo["address"] ?? ""
    
    let enrollmentCertificate = printEnrollmentCertificate(gender : gender, fullname : fullname, studentId : studentId, grade : grade, admissionYear : admissionYear, courses : coursesNum, address : address)
    print(enrollmentCertificate)
}

func selection2() {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    let gender = currentStudentInfo["gender"] ?? ""
    let fullname = currentStudentInfo["name"] ?? ""
    let courses = currentStudentInfo["courses"] ?? ""
    let coursesList : [String] = courses.components(separatedBy: ",")
    
    let currentCourseList = getCourseList()

    let myCourses = printMyCourses(gender : gender, fullname : fullname, courseList : coursesList, currentCourseList : currentCourseList)
    print(myCourses)
}

func selection3() {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    let studentId = currentStudentInfo["studentID"] ?? ""
    let gender = currentStudentInfo["gender"] ?? ""
    let fullname = currentStudentInfo["name"] ?? ""
    
    let studentTranscript = getStudentTranscript(studentId: studentId)
    
    let myTranscript = printMyTranscript(gender : gender, fullname : fullname, studentTranscript : studentTranscript)
    print(myTranscript)
}

func selection4() {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    let gender = currentStudentInfo["gender"] ?? ""
    let fullname = currentStudentInfo["name"] ?? ""
    
    let gpa = printGPA(gender : gender, fullname : fullname)
    print(gpa)
}

func selection5() {
    let currentStudentInfo = getStudentInfo(username: usernameToken)
    let studentId = currentStudentInfo["studentID"] ?? ""
    let gender = currentStudentInfo["gender"] ?? ""
    let fullname = currentStudentInfo["name"] ?? ""
    
    let rankingAndGPA = printRankingAndGPA(studentId : studentId, gender : gender, fullname : fullname)
    print(rankingAndGPA)
}

func selection6(){
    print(availableCourses)
}

func selection7(){
    let allStudentInfo = getAllStudentNameAndId()
    let allStudents = printAllStudents(allStudentInfo : allStudentInfo)
    print(allStudents)
}
