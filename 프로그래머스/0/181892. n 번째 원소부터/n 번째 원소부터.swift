import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
    guard n <= num_list.count else { return [] }
    return Array(num_list.dropFirst(n - 1))
}