import Foundation

func solution(_ my_string: String, _ alp: String) -> String {
    let uppercaseAlp = alp.uppercased()
    return my_string.replacingOccurrences(of: alp, with: uppercaseAlp)
}