import Foundation

func solution(_ my_string: String) -> Int {
    guard my_string.count >= 1, my_string.count <= 1_000 else { return 0 }
    
    return my_string.compactMap { Int(String($0)) }.reduce(0,+)
}