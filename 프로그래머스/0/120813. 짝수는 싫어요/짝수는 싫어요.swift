import Foundation

func solution(_ n: Int) -> [Int] {
    guard 1...100 ~= n else { return [] }
    var result = [Int]()
    for i in 1...n {
        if i % 2 != 0 {
            result.append(i)
        }
    }
    return result
}