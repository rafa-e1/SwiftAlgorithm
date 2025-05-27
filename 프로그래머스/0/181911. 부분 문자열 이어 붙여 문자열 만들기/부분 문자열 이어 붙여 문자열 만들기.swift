import Foundation

func solution(_ my_strings: [String], _ parts: [[Int]]) -> String {
    var result = ""
    
    for (i, part) in parts.enumerated() {
        let str = my_strings[i]
        let start = str.index(str.startIndex, offsetBy: part[0])
        let end = str.index(str.startIndex, offsetBy: part[1])
        result += String(str[start...end])
    }
    
    return result
}