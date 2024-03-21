func readInt() -> Int {
    return Int(readLine()!)!
}

func readIntArray() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func countOccurrences(of target: Int, in array: [Int]) -> Int {
    return array.filter { $0 == target }.count
}

func main() {
    let numberOfElements = readInt()
    let elements = readIntArray()
    let targetElement = readInt()

    let occurrenceCount = countOccurrences(of: targetElement, in: elements)

    print(occurrenceCount)
}

main()
