import Foundation

func solution(_ myString: String) -> [Int] {
    let parts = myString.split(separator: "x", omittingEmptySubsequences: false)
    var result: [Int] = []
    for part in parts {
        result.append(part.count)
    }
    return result
}