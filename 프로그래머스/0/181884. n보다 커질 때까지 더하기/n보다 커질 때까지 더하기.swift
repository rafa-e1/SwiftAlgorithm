import Foundation

func solution(_ numbers: [Int], _ n: Int) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
        if sum > n {
            return sum
        }
    }
    
    return sum
}