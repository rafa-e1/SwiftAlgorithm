import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    let swapped = myString.map { $0 == "A" ? "B" : "A" }.joined()
    return swapped.contains(pat) ? 1 : 0
}