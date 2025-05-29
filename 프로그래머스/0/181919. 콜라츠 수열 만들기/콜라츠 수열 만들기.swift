import Foundation

func solution(_ n: Int) -> [Int] {
    return Array(sequence(first: n) { x in
        x == 1 ? nil : (x % 2 == 0 ? x / 2 : 3 * x + 1)
    })
}