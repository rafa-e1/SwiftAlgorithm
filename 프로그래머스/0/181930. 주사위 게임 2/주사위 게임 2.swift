import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let nums = [a, b, c]
    var counts: [Int: Int] = [:]

    for num in nums {
        counts[num, default: 0] += 1
    }

    let sum = nums.reduce(0, +)
    let squareSum = nums.map { $0 * $0 }.reduce(0, +)
    let cubeSum = nums.map { $0 * $0 * $0 }.reduce(0, +)

    switch counts.count {
    case 1: return sum * squareSum * cubeSum
    case 2: return sum * squareSum
    default: return sum
    }
}