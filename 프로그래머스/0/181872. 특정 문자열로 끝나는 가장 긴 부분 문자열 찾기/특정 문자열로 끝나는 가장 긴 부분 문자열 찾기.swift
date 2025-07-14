import Foundation

func solution(_ myString: String, _ pat: String) -> String {
    if let range = myString.range(of: pat, options: .backwards) {
        return String(myString[..<range.upperBound])
    }
    return ""
}