import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    let sortedList = num_list.sorted()
    let smallestFive = Array(sortedList.prefix(5))
    return smallestFive
}