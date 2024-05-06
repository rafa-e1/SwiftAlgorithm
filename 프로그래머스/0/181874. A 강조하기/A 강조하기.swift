import Foundation

func solution(_ myString: String) -> String {
    return myString.map { character -> String in
        switch character {
        case "a": return "A"
        case "A": return "A"
        case let x where x.isUppercase: return x.lowercased()
        default: return String(character)
        }
    }.joined()
}