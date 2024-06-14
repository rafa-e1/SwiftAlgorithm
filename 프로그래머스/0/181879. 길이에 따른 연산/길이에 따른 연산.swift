import Foundation

func solution(_ num_list: [Int]) -> Int {
    guard num_list.count >= 2, num_list.count <= 20, num_list.allSatisfy({ 1...9 ~= $0 }) else {
        return 0
    }
    
    if num_list.count < 11 {
        return num_list.reduce(1, *)
    } else {
        return num_list.reduce(0, +)
    }
}