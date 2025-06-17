import Foundation

func solution(_ n: Int) -> Int {
    return stride(from: 6, through: 6 * n, by: 6)
        .lazy
        .first(where: { $0 % n == 0 })! / 6
}