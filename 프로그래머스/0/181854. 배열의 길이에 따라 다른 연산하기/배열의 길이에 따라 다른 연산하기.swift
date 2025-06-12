import Foundation

func solution(_ arr: [Int], _ n: Int) -> [Int] {
    let isOdd = arr.count % 2 == 1
    return arr.enumerated().map { index, value in
        if (isOdd && index % 2 == 0) || (!isOdd && index % 2 == 1) {
            return value + n
        } else {
            return value
        }
    }
}