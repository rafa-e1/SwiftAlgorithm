import Foundation

func solution(_ array: [Int]) -> Int {
    guard array.count % 2 != 0,
          array.count > 0, array.count < 100,
          array.allSatisfy({ $0 > -1_000 && $0 < 1_000 })
    else {
        return 0
    }
    
    let sortedNumber = array.sorted()
    
    return sortedNumber[array.count / 2]
}