import Foundation

func solution(_ arr: [Int]) -> [Int] {
    return arr.map { element in
        if element >= 50 && element % 2 == 0 {
            return element / 2
        } else if element < 50 && element % 2 != 0 {
            return element * 2
        } else {
            return element
        }
    }
}