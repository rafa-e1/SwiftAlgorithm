func readIntegers() -> [Int] {
    guard let line = readLine() else {
        fatalError("Failed to read input")
    }
    return line.split(separator: " ").compactMap { Int($0) }
}

func filterArrayBelow(threshold: Int, in array: [Int]) -> [Int] {
    return array.filter { $0 < threshold }
}

func main() {
    let inputNumbers = readIntegers()
    guard inputNumbers.count >= 2 else {
        fatalError("Insufficient input numbers")
    }
    let (n, x) = (inputNumbers[0], inputNumbers[1])
    let array = readIntegers()

    guard array.count == n else {
        fatalError("Array count does not match N")
    }

    let filteredArray = filterArrayBelow(threshold: x, in: array)
    let result = filteredArray.map(String.init).joined(separator: " ")
    print(result)
}

main()
