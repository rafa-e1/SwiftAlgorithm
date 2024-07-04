import Foundation

func solution(_ n: Int) -> Int {
    let sqrtN = Int(sqrt(Double(n)))
    return sqrtN * sqrtN == n ? 1 : 2
}