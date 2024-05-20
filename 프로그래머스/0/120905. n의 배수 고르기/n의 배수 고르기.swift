import Foundation

func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
    guard 1...10_000 ~= n,
          numlist.count >= 1, numlist.count <= 100,
          numlist.allSatisfy({ 1...100_000 ~= $0 })
    else { return [] }
    
    return numlist.filter { $0 % n == 0 }
}