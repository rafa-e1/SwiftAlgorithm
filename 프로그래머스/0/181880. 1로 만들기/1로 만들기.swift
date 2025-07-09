import Foundation

func solution(_ num_list: [Int]) -> Int {
    num_list.reduce(0) { total, num in
        var count = 0
        var n = num
        while n > 1 {
            n = n % 2 == 0 ? n / 2 : (n - 1) / 2
            count += 1
        }
        return total + count
    }
}