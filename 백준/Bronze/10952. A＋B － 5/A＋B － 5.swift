while true {
    let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
    let a = inputNumbers[0]
    let b = inputNumbers[1]
    
    if a == 0 && b == 0 {
        break
    } else {
        print(a + b)
    }
}