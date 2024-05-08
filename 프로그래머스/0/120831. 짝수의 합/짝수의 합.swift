import Foundation

func solution(_ n: Int) -> Int {
    guard n > 0 && n <= 1_000 else { return 0 }
    var result = 0
    for i in 1...n where i % 2 == 0 { result += i }
    return result
}