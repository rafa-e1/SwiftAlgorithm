let testCases = Int(readLine()!)!

for _ in 0..<testCases {
    let testCase = readLine()!
    let firstCharacter = testCase.first!
    let lastCharacter = testCase.last!

    print("\(firstCharacter)\(lastCharacter)")
}