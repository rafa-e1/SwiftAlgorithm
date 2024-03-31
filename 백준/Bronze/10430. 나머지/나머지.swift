func validateInputs(a: Int, b: Int, c: Int) -> Bool {
    let lowerBound = 2
    let upperBound = 10_000
    return a >= lowerBound && a <= upperBound &&
           b >= lowerBound && b <= upperBound &&
           c >= lowerBound && c <= upperBound
}

func printModularCalculations(a: Int, b: Int, c: Int) {
    let aModC = a % c
    let bModC = b % c
    print((a + b) % c)
    print((aModC + bModC) % c)
    print((a * b) % c)
    print((aModC * bModC) % c)
}

func processCalculations() {
    guard let readLine = readLine()?.split(separator: " ").compactMap({ Int($0) }),
          readLine.count == 3,
          validateInputs(a: readLine[0], b: readLine[1], c: readLine[2])
    else {
        print("올바른 형식으로 세 개의 정수를 입력해주세요.")
        return
    }
    
    let (a, b, c) = (readLine[0], readLine[1], readLine[2])
    printModularCalculations(a: a, b: b, c: c)
}

processCalculations()
