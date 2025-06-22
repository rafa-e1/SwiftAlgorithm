import Foundation

func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    let chars = Array(my_string)
    let rowCount = chars.count / m
    let columnIndex = c - 1
    
    var result = ""
    for i in 0..<rowCount {
        result.append(chars[i * m + columnIndex])
    }
    
    return result
}