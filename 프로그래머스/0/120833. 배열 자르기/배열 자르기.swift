import Foundation

func solution(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
    guard num1 >= 0, num1 < num2, num2 < numbers.count else {
        return []
    }
    
    return Array(numbers[num1...num2])
}