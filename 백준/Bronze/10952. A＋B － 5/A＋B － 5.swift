func readInput() -> (Int, Int)? {
    guard let readLine = readLine()?.split(separator: " "),
          readLine.count == 2
    else {
        fatalError()
    }
    
    guard let a = Int(readLine[0]),
          let b = Int(readLine[1])
    else {
        fatalError()
    }
    
    return (a, b)
}

func isExitCondition(_ input: (Int, Int)) -> Bool {
    return input.0 == 0 && input.1 == 0
}

func addNumbers(_ input: (Int, Int)) -> Int {
    return input.0 + input.1
}

func main() {
    while true {
        guard let input = readInput() else { continue }
        if isExitCondition(input) { break }
        let result = addNumbers(input)
        print(result)
    }
}

main()
