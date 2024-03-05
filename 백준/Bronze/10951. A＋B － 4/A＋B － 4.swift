while let input = readLine() {
    let inputNumbers = input.split(separator: " ").map { Int($0)! }
    let a = inputNumbers[0]
    let b = inputNumbers[1]
    
    print(a + b)
}