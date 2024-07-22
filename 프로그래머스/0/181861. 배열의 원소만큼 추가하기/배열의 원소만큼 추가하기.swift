import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var result: [Int] = []
    
    for num in arr {
        result.append(contentsOf: Array(repeating: num, count: num))
    }
    
    return result
}