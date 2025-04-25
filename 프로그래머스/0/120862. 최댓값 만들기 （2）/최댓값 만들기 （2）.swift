import Foundation

func solution(_ numbers: [Int]) -> Int {
    let sorted = numbers.sorted()
    let product1 = sorted[0] * sorted[1]
    let product2 = sorted[sorted.count - 1] * sorted[sorted.count - 2]
    return max(product1, product2)
}