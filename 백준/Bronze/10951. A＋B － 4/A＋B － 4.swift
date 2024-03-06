func isValidRange(_ a: Int, _ b: Int) -> Bool {
    return a > 0 && b < 10
}

func sumOfTwoNumbers(_ input: String) -> Int? {
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    guard numbers.count == 2 else { return nil }
    guard isValidRange(numbers[0], numbers[1]) else { return nil }
    return numbers[0] + numbers[1]
}

while let readLine = readLine() {
    if let sum = sumOfTwoNumbers(readLine) {
        print(sum)
    }
}