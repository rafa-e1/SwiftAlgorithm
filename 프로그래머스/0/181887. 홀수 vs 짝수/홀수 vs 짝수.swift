import Foundation

func solution(_ num_list: [Int]) -> Int {
    var oddSum = 0
    var evenSum = 0
    
    for (index, num) in num_list.enumerated() {
        if index % 2 == 0 {
            oddSum += num
        } else {
            evenSum += num
        }
    }
    
    return max(oddSum, evenSum)
}