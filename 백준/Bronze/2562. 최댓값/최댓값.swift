func readIntegers(count: Int) -> [Int] {
    var numbers = [Int]()
    for _ in 1...count {
        if let input = readLine(), let number = Int(input) {
            numbers.append(number)
        } else {
            print("잘못된 입력입니다. 정수를 입력해주세요.")
        }
    }
    return numbers
}

func findMaxAndIndex(in numbers: [Int]) -> (max: Int, index: Int) {
    guard let maxNumber = numbers.max() else { return (0, 0) }
    let index = numbers.firstIndex(of: maxNumber) ?? 0
    return (maxNumber, index + 1)
}

let numbers = readIntegers(count: 9)
let result = findMaxAndIndex(in: numbers)

print(result.max)
print(result.index)