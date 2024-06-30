import Foundation

func solution(_ my_string: String) -> String {
    return my_string.map { 
        $0.isLowercase ? String($0).uppercased() : String($0).lowercased() 
    }.joined()
}