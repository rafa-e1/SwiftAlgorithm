import Foundation

func solution(_ numbers: [Int], _ direction: String) -> [Int] {
    guard !numbers.isEmpty else { return numbers }

    switch direction {
    case "left":
        return Array(numbers.dropFirst()) + [numbers.first!]
    case "right":
        return [numbers.last!] + Array(numbers.dropLast())
    default:
        return numbers
    }
}