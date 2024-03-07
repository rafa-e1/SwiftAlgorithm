import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    guard (num1 >= 0 && num1 <= 10_000), (num2 >= 0 && num2 <= 10_000) else {
        return 0
    }
    return num1 == num2 ? 1 : -1
}