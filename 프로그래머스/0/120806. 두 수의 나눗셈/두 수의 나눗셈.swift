import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    let result: Int = Int(Float(num1) / Float(num2) * 1_000)
    return result
}