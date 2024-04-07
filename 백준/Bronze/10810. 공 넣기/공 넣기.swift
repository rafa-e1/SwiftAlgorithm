struct BasketManager {
    private var baskets: [Int]
    
    init(numberOfBaskets: Int) {
        self.baskets = [Int](repeating: 0, count: numberOfBaskets)
    }
    
    mutating func fillBaskets(range: ClosedRange<Int>, withBallNumber ballNumber: Int) {
        let adjustedRange = (range.lowerBound - 1)...(range.upperBound - 1)
        baskets.replaceSubrange(adjustedRange, with: repeatElement(ballNumber, count: range.count))
    }
    
    func displayContents() {
        baskets.forEach { print($0, terminator: " ") }
        print()
    }
}

func main() {
    let initialInput = readInput().map { Int($0)! }
    let (numberOfBaskets, numberOfOperations) = (initialInput[0], initialInput[1])

    var basketManager = BasketManager(numberOfBaskets: numberOfBaskets)

    for _ in 0..<numberOfOperations {
        let operationInput = readInput().map { Int($0)! }
        let (start, end, ballNumber) = (operationInput[0], operationInput[1], operationInput[2])

        basketManager.fillBaskets(range: start...end, withBallNumber: ballNumber)
    }

    basketManager.displayContents()
}

func readInput() -> [String.SubSequence] {
    return readLine()!.split(separator: " ")
}

main()