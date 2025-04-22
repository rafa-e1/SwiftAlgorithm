import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let ab = Int("\(a)\(b)")!
    let ba = Int("\(b)\(a)")!
    return max(ab, ba)
}