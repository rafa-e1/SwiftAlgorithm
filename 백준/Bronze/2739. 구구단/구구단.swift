func multiplicationTable() {
    guard let input = readLine(), let number = Int(input) else {
        print("숫자만 입력해주세요.")
        return
    }
    
    for i in 1...9 {
        print("\(number) * \(i) = \(number * i)")
    }
}

multiplicationTable()
