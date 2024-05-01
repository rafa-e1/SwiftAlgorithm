import Foundation

func solution(_ s1: [String], _ s2: [String]) -> Int {
    let set1 = Set(s1)
    let set2 = Set(s2)
    
    let commonElements = set1.intersection(set2)
    return commonElements.count
}