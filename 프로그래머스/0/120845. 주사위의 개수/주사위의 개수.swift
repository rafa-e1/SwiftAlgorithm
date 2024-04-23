import Foundation

func solution(_ box: [Int], _ n: Int) -> Int {
    guard box.count == 3 else { return 0 }
    guard box.allSatisfy({ $0 >= 1 && $0 <= 100 }) else { return 0 }
    guard n >= 1 && n <= 50 else { return 0 }
    guard box.allSatisfy({ $0 >= n }) else { return 0 }
    
    let x = box[0] / n
    let y = box[1] / n
    let z = box[2] / n

    return x * y * z
}