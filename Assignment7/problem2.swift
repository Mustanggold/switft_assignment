import Foundation

protocol CarRepairServiceProvider {
    var issueDescription : String {get}
    var carModel : String {get}
}

protocol HomeServiceProvider {
    var cookingService : String {get}
    var washingService : String {get}
    var babySittingService : String {get}
}

enum HomeService {
    case cookingService, washingService, babySittingService
    mutating func serviceType() {
        switch self {
            case .cookingService:
                print("Cooking Service selected")
            case .washingService:
                print("Washing Service selected")
            case .babySittingService:
                print("Babysitting Service selected")
        }
    }
    func address(location : String) {
        print("The service will be operated at \(location)")
    }
}

protocol StudentServicesProvider {
    var studentServiceDescription : String {get}
}

class clientA : CarRepairServiceProvider {
    var issueDescription : String
    var carModel : String
    var delegate : CarRepairServiceProvider?
    
    init(issueDescription : String, carModel : String){
        self.issueDescription = issueDescription
        self.carModel = carModel
    }

    func inquiry() {
        print("\(issueDescription) on \(carModel)")
    }
}

class clientB : HomeServiceProvider {
    var cookingService : String
    var washingService : String
    var babySittingService : String
    var delegate : HomeServiceProvider?

    init(cookingService : String, washingService : String, babySittingService : String) {
        self.cookingService = cookingService
        self.washingService = washingService
        self.babySittingService = babySittingService
    }
}

class clientC : StudentServicesProvider {
    var studentServiceDescription : String
    var delegate : StudentServicesProvider?

    init(studentServiceDescription : String) {
        self.studentServiceDescription = studentServiceDescription
    }
}

class clientD: CarRepairServiceProvider, HomeServiceProvider, StudentServicesProvider {
    var issueDescription : String
    var carModel : String
    var cookingService : String
    var washingService : String
    var babySittingService : String
    var studentServiceDescription : String
    
    var delegate1 : CarRepairServiceProvider?
    var delegate2 : HomeServiceProvider?
    var delegate3 : StudentServicesProvider?
    
    init(issueDescription : String, carModel : String, cookingService : String, washingService : String, babySittingService : String, studentServiceDescription : String){
        self.issueDescription = issueDescription
        self.carModel = carModel
        self.cookingService = cookingService
        self.washingService = washingService
        self.babySittingService = babySittingService
        self.studentServiceDescription = studentServiceDescription
    }
}