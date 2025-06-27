func solution(_ arr: [Int], _ flag: [Bool]) -> [Int] {
    var result = [Int]()
    result.reserveCapacity(2000)
    
    for (i, f) in flag.enumerated() {
        if f {
            result.append(contentsOf: repeatElement(arr[i], count: arr[i]*2))
        } else {
            result.removeLast(arr[i])
        }
    }
    return result
}