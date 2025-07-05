import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {
    included.enumerated().reduce(0) { sum, elem in
        let (i, isIncluded) = elem
        return isIncluded ? sum + (a + d * i) : sum
    }
}