import Foundation

func solution(_ n: Int) -> Int {
    guard n >= 1, n <= 100 else { return 0 }
    return (n + 6) / 7
}