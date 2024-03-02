func readNumber(number: Int) -> Int {
    guard number >= 1 && number <= 100 else {
        fatalError("1부터 100 사이의 입력만 가능합니다.")
    }
    
    return number
}

func inputNumber() -> Int {
    guard let readLine = readLine(), let number = Int(readLine) else {
        fatalError("정수만 입력해주세요.")
    }
    
    return number
}

func run() {
    let inputNumber = readNumber(number: inputNumber())
    for i in 1...inputNumber {
        let spaces = String(repeating: " ", count: inputNumber - i)
        let stars = String(repeating: "*", count: i)
        print(spaces + stars)
    }
}

run()