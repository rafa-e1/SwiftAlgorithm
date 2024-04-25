import Foundation

func solution(_ my_string: String) -> Int {
    guard my_string.count >= 1, my_string.count <= 1_000 else { return 0 }
    
    var totalSum = 0
    
    for char in my_string {
        if let digit = Int(String(char)) {
            totalSum += digit
        }
    }
    
    return totalSum
}