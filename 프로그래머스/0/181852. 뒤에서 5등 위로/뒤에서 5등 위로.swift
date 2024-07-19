import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    let sortedList = num_list.sorted()
    let result = Array(sortedList.dropFirst(5))
    return result
}