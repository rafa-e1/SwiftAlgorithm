import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    guard num_list.count >= 1, num_list.count <= 100 else { return [] }
    
    var evenCount = 0
    var oddCount = 0
    
    for number in num_list {
        guard number >= 0, number <= 1_000 else { return [] }
        
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    
    return [evenCount, oddCount]
}