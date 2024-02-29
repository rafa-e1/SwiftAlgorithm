func solution() {
    if let readLine = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
        if readLine.count == 3 {
            print(readLine[0] + readLine[1] + readLine[2])
        } else {
            print("입력 형식이 올바르지 않습니다.")
        }
    }
}

solution()