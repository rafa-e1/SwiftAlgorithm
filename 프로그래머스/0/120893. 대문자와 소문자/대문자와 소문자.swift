import Foundation

func solution(_ my_string: String) -> String {
    var transformedString = ""

    for character in my_string {
        if character.isLowercase {
            transformedString.append(character.uppercased())
        } else if character.isUppercase {
            transformedString.append(character.lowercased())
        }
    }

    return transformedString
}
