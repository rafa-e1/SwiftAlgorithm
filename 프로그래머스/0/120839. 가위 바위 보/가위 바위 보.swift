import Foundation

func solution(_ rsp: String) -> String {
    guard rsp.count > 0, rsp.count <= 100 else { return "" }
    
    for char in rsp {
        guard char == "0" || char == "2" || char == "5" else { return "" }
    }
    
    var result = ""
    
    for char in rsp {
        switch char {
        case "0": result.append("5")
        case "2": result.append("0")
        case "5": result.append("2")
        default: ""
        }
    }
    
    guard result.count == rsp.count else { return "" }
    
    return result
}