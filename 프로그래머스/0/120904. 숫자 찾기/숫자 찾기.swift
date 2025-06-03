import Foundation

func solution(_ num: Int, _ k: Int) -> Int {
    let target = Character(String(k))
    return String(num)
        .enumerated()
        .first(where: { $0.element == target })?
        .offset
        .advanced(by: 1) ?? -1
}