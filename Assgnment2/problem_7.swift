// Problem 7
import Foundation

func function() -> String {
    var list : [String] = []
    while(true){
        print("Enter a word:")
        if let input = readLine() {
            if input == "exit" {
               break
            }    
            list.append(input)
        }    
    }

    var str : String = "";
    for value in UnicodeScalar("A").value...UnicodeScalar("Z").value {
        
        let startWith : String = String(UnicodeScalar(value)!)
        var characterStr : String = "\(startWith): "
        
        for item in list {
            if item.lowercased().hasPrefix(startWith.lowercased()){
                characterStr += "\(item), "
            }          
        }
        str += "\(characterStr.prefix(characterStr.count-2))\n"
    }
    return str
}
print(function())