import Foundation

func solution(_ my_string: String, _ num1: Int, _ num2: Int) -> String {
    var characters = Array(my_string)
    characters.swapAt(num1, num2)
    return String(characters)
}