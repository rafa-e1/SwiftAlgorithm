import Foundation

func solution(_ myString: String) -> [String] {
    var result = [String]()
    var word = ""

    for char in myString {
        if char == "x" {
            if !word.isEmpty {
                result.append(word)
                word = ""
            }
        } else {
            word.append(char)
        }
    }

    if !word.isEmpty {
        result.append(word)
    }

    return result.sorted()
}