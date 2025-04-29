import Foundation

func solution(_ n: Int) -> [Int] {
    var divisors: [Int] = []
    for i in 1...n {
        if n % i == 0 {
            divisors.append(i)
        }
    }
    return divisors
}