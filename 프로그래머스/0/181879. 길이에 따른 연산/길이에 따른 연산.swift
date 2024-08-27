import Foundation

func solution(_ num_list: [Int]) -> Int {
    switch num_list.count {
    case 0..<11: return num_list.reduce(1, *)
    default: return num_list.reduce(0, +)
    }
}