import Foundation

func solution(_ myString: String) -> String {
    return myString.map { $0 < "l" ? "l" : $0 }.map { String($0) }.joined()
}