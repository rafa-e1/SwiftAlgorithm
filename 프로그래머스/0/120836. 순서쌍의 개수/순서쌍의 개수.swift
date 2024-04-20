import Foundation

func solution(_ n: Int) -> Int {
    guard n >= 1, n <= 1_000_000 else { return 0 }
    
    var pairCount = 0
    let upperLimit = Int(sqrt(Double(n)))
    
    for divisor in 1...upperLimit {
        if n % divisor == 0 {
            let complement = n / divisor
            if divisor == complement {
                pairCount += 1
            } else {
                pairCount += 2
            }
        }
    }
    
    return pairCount
}