import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    let startIdx = my_string.index(my_string.startIndex, offsetBy: s)
    let endIdx = my_string.index(my_string.startIndex, offsetBy: e)
    
    let prefix = my_string[..<startIdx]
    let reversed = String(my_string[startIdx...endIdx].reversed())
    let suffix = my_string[my_string.index(after: endIdx)...]
    
    return prefix + reversed + suffix
}