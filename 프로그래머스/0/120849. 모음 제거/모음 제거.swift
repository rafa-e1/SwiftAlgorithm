import Foundation

func solution(_ my_string: String) -> String {
    let vowels: CharacterSet = ["a", "e", "i", "o", "u"]
    let filteredString = my_string.components(separatedBy: vowels).joined()
    return filteredString
}