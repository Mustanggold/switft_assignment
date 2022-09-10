// Problem 2
import Foundation

enum AppleDevice {
    case iPhoneXs, iPhoneXR, iPhone8, iPhone7
    var getPrice : String {
        switch self {
            case .iPhoneXs:
                 return "iPhoneXs: 1000";
            case .iPhoneXR:
                 return "iPhoneXR: 1100";
            case .iPhone8:
                 return "iPhone8: 800";
            case .iPhone7:
                 return "iPhone7: 750";
            }
    }
}

let x = AppleDevice.iPhoneXR
print(x.getPrice)