import Foundation

func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    let first = intervals[0]
    let second = intervals[1]
    let firstSlice = Array(arr[first[0]...first[1]])
    let secondSlice = Array(arr[second[0]...second[1]])
    return firstSlice + secondSlice
}