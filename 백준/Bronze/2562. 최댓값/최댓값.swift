func findMaxValueAndIndex(numbers: [Int]) -> (maxValue: Int, index: Int)? {
    guard let maxValue = numbers.max() else {
        print("최댓값을 찾을 수 없습니다.")
        return nil
    }
    
    guard let index = numbers.firstIndex(of: maxValue) else {
        print("최댓값이 배열에 없습니다.")
        return nil
    }
    
    return (maxValue, index + 1)
}

func validateNumbers(_ numbers: [Int]) -> Bool {
    if numbers.count != 9 {
        print("9개의 숫자만 입력해주세요.")
        return false
    }
    
    if numbers.contains(where: { $0 >= 100 }) {
        print("입력한 숫자는 100보다 작아야 합니다.")
        return false
    }
    
    return true
}

func inputNumbers() -> [Int]? {
    var numbers = [Int]()
    for i in 1...9 {
        guard let readLine = readLine(), let number = Int(readLine) else {
            print("\(i)번째 입력이 유효하지 않습니다.")
            return nil
        }
        numbers.append(number)
    }
    return numbers
}

func main() {
    guard let numbers = inputNumbers() else {
        return
    }
    
    guard validateNumbers(numbers) else {
        return
    }
    
    guard let result = findMaxValueAndIndex(numbers: numbers) else {
        return
    }

    print(result.maxValue)
    print(result.index)
}

main()