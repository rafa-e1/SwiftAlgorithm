import Foundation

func solution(_ sides: [Int]) -> Int {
    let sortedSides = sides.sorted()
    let longest = sortedSides[2]
    let sumOfOtherTwo = sortedSides[0] + sortedSides[1]
    
    if longest < sumOfOtherTwo {
        return 1
    } else {
        return 2
    }
}
