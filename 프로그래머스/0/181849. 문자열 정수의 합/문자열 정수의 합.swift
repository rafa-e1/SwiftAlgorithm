import Foundation

func solution(_ num_str: String) -> Int {
    let sum = num_str.reduce(0) { $0 + (Int(String($1)) ?? 0) }
    return sum
}