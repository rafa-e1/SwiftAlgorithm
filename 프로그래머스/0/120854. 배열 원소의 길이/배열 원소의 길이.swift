import Foundation

func solution(_ strlist: [String]) -> [Int] {
    for str in strlist {
        guard str.count >= 1, str.count <= 100 else { return [] }
    }
    
    return strlist.map { $0.count }
}