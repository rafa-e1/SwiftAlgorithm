import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let isAOdd = a % 2 == 1
    let isBOdd = b % 2 == 1
    
    switch (isAOdd, isBOdd) {
    case (true, true): return a * a + b * b
    case (true, false), (false, true): return 2 * (a + b)
    default: return abs(a - b)
    }
}