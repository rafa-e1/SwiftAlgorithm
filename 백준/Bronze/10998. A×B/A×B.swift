if let line = readLine() {
    let numbers = line.split(separator: " ").compactMap { Int($0) }
    if numbers.count == 2 {
        print(numbers[0] * numbers[1])
    } else {
        print("입력 형식이 올바르지 않습니다.")
    }
}
