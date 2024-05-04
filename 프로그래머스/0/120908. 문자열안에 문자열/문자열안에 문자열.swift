import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    switch str1.contains(str2) {
    case true: return 1
    case false: return 2
    }
}