if let readLine = readLine() {
    let numbers = readLine.split(separator: " ").compactMap { Int($0) }
    if numbers.count == 3 {
        let (a, b, c) = (numbers[0], numbers[1], numbers[2])
        let aModC = a % c
        let bModC = b % c
        
        print((a + b) % c)
        print((aModC + bModC) % c)
        print((a * b) % c)
        print((aModC * bModC) % c)
    } else {
        print("입력 형식이 올바르지 않습니다.")
    }
})
