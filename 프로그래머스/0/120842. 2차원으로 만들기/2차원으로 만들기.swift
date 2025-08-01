import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
    stride(from: 0, to: num_list.count, by: n).map {
        Array(num_list[$0 ..< $0 + n])
    }
}