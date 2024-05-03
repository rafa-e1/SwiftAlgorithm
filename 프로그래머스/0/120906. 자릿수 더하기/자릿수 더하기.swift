import Foundation

func solution(_ n: Int) -> Int {
    let stringNumber = String(n)
    let sum = stringNumber.compactMap { Int(String($0)) }.reduce(0, +)
    return sum
}