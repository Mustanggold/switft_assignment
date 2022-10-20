import Foundation

class MyStudent{
    var firstName: String?
    var lastName: String?
    let id: Int = 1
    var address: String?
    //Complete code here
    init(firstName: String, lastName: String, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
    
    subscript(input: Int) -> String{
        get {
            if input == 0 {
                return firstName!
            }else if input == 1 {
                return lastName!
            }else if input == 2 {
                return String(id)
            }else if input == 3 {
                return address!
            }else {
                return "Invalid input"
            }
        }
        
        set(value) {
            if input == 0 {
                firstName = value
            }else if input == 1 {
                lastName = value
            }else if input == 3 {
                address = value
            }
        }
    }
}

let st = MyStudent(firstName: "Sara", lastName: "Jones", address: "Vancouver")
print(st[0]) //prints the first name of st
print(st[1]) //prints the last name of st
print(st[2]) //prints the id of st
print(st[3]) //print the address of st
st[0] = "Sarah" //change the first name to Sarah
st[1] = "Peter" //change the last name to Peter
//st[2] is readOnly and cannont change once assigned
st[3] = "Surrey" //change the address to Surrey
print(st[0]) //prints the first name of st
print(st[1]) //prints the last name of st
print(st[2]) //prints the id of st
print(st[3]) //print the address of st

