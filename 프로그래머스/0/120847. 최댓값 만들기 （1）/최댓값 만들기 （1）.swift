import Foundation

func solution(_ numbers: [Int]) -> Int {
    guard numbers.count >= 2 else { return 0 }
    guard numbers.allSatisfy({ 0...10_000 ~= $0 }) else { return 0 }
    
    let sortedNumbers = numbers.sorted()
    let maxProduct = sortedNumbers[sortedNumbers.count - 1] * sortedNumbers[sortedNumbers.count - 2]
    
    return maxProduct
}