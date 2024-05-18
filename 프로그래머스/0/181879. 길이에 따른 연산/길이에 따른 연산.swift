import Foundation

func solution(_ num_list: [Int]) -> Int {
    guard num_list.count >= 2, num_list.count <= 20,
          num_list.allSatisfy({ 1...9 ~= $0 })
    else {
        return 0
    }
    
    if num_list.count < 11 {
        let product = num_list.reduce(1, *)
        guard product <= 2_147_483_647 else { return -1 }
        return product
    } else {
        return num_list.reduce(0, +)
    }
}