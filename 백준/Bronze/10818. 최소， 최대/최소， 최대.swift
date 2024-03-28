func findMinMax() {
    guard let numberOfIntegers = Int(readLine() ?? ""), 1...1_000_000 ~= numberOfIntegers else {
        print("정수의 개수가 유효하지 않습니다.")
        return
    }

    guard let integersInput = readLine()?.split(separator: " ").compactMap({ Int($0) }), 
          integersInput.count == numberOfIntegers, 
          integersInput.allSatisfy({ -1_000_000...1_000_000 ~= $0 }) else {
        print("입력한 정수의 개수나 범위가 유효하지 않습니다.")
        return
    }

    if let min = integersInput.min(), let max = integersInput.max() {
        print("\(min) \(max)")
    } else {
        print("최솟값과 최댓값을 찾을 수 없습니다.")
    }
}

findMinMax()
