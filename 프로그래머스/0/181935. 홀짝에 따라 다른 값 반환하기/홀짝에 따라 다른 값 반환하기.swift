import Foundation

func solution(_ n: Int) -> Int {
    if n % 2 == 1 {
        return stride(from: 1, through: n, by: 2).reduce(0, +)
    } else {
        return stride(from: 2, through: n, by: 2).map { $0 * $0 }.reduce(0, +)
    }
}