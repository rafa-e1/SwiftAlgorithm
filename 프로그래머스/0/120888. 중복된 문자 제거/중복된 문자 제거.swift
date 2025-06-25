import Foundation

func solution(_ my_string: String) -> String {
    var seen = Set<Character>()
    return my_string.filter { seen.insert($0).inserted }
}