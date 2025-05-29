import Foundation

func solution(_ my_string: String, _ index_list: [Int]) -> String {
    return index_list.map {
        let index = my_string.index(my_string.startIndex, offsetBy: $0)
        return String(my_string[index])
    }.joined()
}