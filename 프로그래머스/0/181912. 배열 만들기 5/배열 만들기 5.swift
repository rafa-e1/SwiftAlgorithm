import Foundation

func solution(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
    intStrs.compactMap { str in
        let start = str.index(str.startIndex, offsetBy: s)
        let end = str.index(start, offsetBy: l)
        let num = Int(str[start..<end])!
        return num > k ? num : nil
    }
}