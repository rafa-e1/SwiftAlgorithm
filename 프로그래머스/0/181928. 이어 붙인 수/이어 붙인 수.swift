import Foundation

func solution(_ num_list: [Int]) -> Int {
    var oddString = ""
    var evenString = ""
    
    for num in num_list {
        if num % 2 == 0 {
            // 짝수
            evenString += String(num)
        } else {
            // 홀수
            oddString += String(num)
        }
    }
    
    let oddNumber = Int(oddString) ?? 0
    let evenNumber = Int(evenString) ?? 0
    
    return oddNumber + evenNumber
}