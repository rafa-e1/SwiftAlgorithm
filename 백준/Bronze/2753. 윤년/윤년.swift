func isLeapYear() {
    guard let readLine = readLine(), let year = Int(readLine) else {
        print("입력 형식이 올바르지 않습니다.")
        return
    }
    
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) {
        print(1)
    } else {
        print(0)
    }
}

isLeapYear()
