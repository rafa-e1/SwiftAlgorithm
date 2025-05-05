import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    let op = Int("\(a)\(b)")!
    let product = 2 * a * b
    return op >= product ? op : product
}