import Foundation

func solution(_ n_str: String) -> String {
    return String(n_str.drop { $0 == "0" })
}