import Foundation

func solution(_ array: [Int]) -> [Int] {
    guard let maxElement = array.max() else { return [] }
    
    if let maxIndex = array.firstIndex(of: maxElement) {
        return [maxElement, maxIndex]
    } else { 
        return [] 
    }
}