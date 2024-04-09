import Foundation

func solution(_ array: [Int]) -> Int {
    guard array.count % 2 != 0, array.count > 0, array.count < 100,
          array.allSatisfy({ $0 > -1000 && $0 < 1000 }) else {
        return 0
    }
    
    let sortedArray = array.sorted()
    return sortedArray[sortedArray.count / 2]
}