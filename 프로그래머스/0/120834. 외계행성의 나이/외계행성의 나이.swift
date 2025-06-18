import Foundation

func solution(_ age: Int) -> String {
    return String(age).map {
        String(UnicodeScalar(97 + Int(String($0))!)!)
    }.joined()
}