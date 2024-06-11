import Foundation

func solution(_ array: [Int]) -> [Int] {
    let isWithinBounds = array.count >= 1 && array.count <= 100
    let isElementsInRange = array.allSatisfy { 0...1_000 ~= $0 }
    let hasUniqueElements = Set(array).count == array.count
    
    guard isWithinBounds, isElementsInRange, hasUniqueElements else {
        return []
    }
    
    if let maxElement = array.max(),
       let maxIndex = array.firstIndex(of: maxElement) {
        return [maxElement, maxIndex]
    }
    
    return []
}