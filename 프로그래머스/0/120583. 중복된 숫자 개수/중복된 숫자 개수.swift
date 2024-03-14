import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    let result = array.filter { $0 == n }.count
    return result
}