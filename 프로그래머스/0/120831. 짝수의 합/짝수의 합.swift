import Foundation

func solution(_ n: Int) -> Int {
    guard n > 0 && n <= 1_000 else {
        return 0
    }
    let lastEven = n % 2 == 0 ? n : n - 1
    return (2 + lastEven) * (lastEven / 2) / 2
}