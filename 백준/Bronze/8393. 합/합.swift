func calculateSum(upTo number: Int) -> Int {
    return (1...number).reduce(0, +)
}

if let readLine = readLine(), let n = Int(readLine) {
    let sum = calculateSum(upTo: n)
    print(sum)
} else {
    print("올바른 숫자를 입력하세요.")
}
