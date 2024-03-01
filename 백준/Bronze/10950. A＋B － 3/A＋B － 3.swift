class InputManager {
    func numberOfTestCases() -> Int {
        guard let input = readLine(), let numberOfCases = Int(input) else {
            fatalError("Invalid input")
        }
        return numberOfCases
    }

    func testCase() -> (Int, Int) {
        guard let input = readLine() else {
            fatalError("Invalid input")
        }
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        guard numbers.count == 2, numbers[0] > 0 && numbers[1] < 10 else {
            fatalError("Invalid test case")
        }
        return (numbers[0], numbers[1])
    }
}

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

class Application {
    private let inputManager = InputManager()
    private let calculator = Calculator()

    func run() {
        let numberOfTestCases = inputManager.numberOfTestCases()
        for _ in 0..<numberOfTestCases {
            let (a, b) = inputManager.testCase()
            let result = calculator.add(a, b)
            print(result)
        }
    }
}

let app = Application()
app.run()
