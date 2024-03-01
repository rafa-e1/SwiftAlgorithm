func compareNumbers() {
    guard let readLine = readLine() else {
        return
    }
    
    let numbers = readLine.split(separator: " ").compactMap { Int($0) }
    guard numbers.count == 2 else {
        print("2개의 정수만 입력해주세요.")
        return
    }
    
    switch (numbers[0], numbers[1]) {
    case let (a, b) where a > b:
        print(">")
    case let (a, b) where a < b:
        print("<")
    case let (a, b) where a == b:
        print("==")
    default:
        break
    }
}

compareNumbers()
