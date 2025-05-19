import Foundation

func solution(_ arr: [Int], _ idx: Int) -> Int {
    return arr[idx...].firstIndex(where: { $0 == 1 }) ?? -1
}