import Foundation

func solution(_ rsp: String) -> String {
    guard rsp.count > 0 && rsp.count <= 100 else { return "" }
    
    for char in rsp {
        if char != "0" && char != "2" && char != "5" {
            return ""
        }
    }
    
    let winningMapping: [Character: Character] = [
        "2": "0",
        "0": "5",
        "5": "2"
    ]
    
    var result = ""
    
    for char in rsp {
        if let winningChar = winningMapping[char] {
            result.append(winningChar)
        } else {
            return ""
        }
    }
    
    return result
}