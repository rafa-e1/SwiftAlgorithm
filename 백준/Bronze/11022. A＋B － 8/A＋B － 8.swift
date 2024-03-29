import Foundation

enum InputError: Error {
    case onePositiveIntegerOnly
    case twoPositiveIntegersSeparatedBySpace
    case invalidNumberRange
}

extension InputError: LocalizedError {
    var errorMessages: String {
         switch self {
         case .onePositiveIntegerOnly:
             return "양의 정수 1개만 입력해주세요."
         case .twoPositiveIntegersSeparatedBySpace:
             return "공백으로 구분된 양의 정수 2개를 입력해주세요"
         case .invalidNumberRange:
             return "A는 0보다 커야 하며 B는 10보다 작아야 합니다."
         }
     }
}

class InputManager {
    func getNumberOfTestCases() throws -> Int {
        guard let readLine = readLine(),
              let numberOfTestCases = Int(readLine),
              numberOfTestCases > 0
        else {
            throw InputError.onePositiveIntegerOnly
        }
        
        return numberOfTestCases
    }
    
    func readTwoNumbers() throws -> (Int, Int) {
        guard let readLine = readLine()?.split(separator: " ").compactMap({ Int($0) }),
              readLine.count == 2
        else {
            throw InputError.twoPositiveIntegersSeparatedBySpace
        }
        
        guard readLine[0] > 0 && readLine[1] < 10 else {
            throw InputError.invalidNumberRange
        }
        
        return (readLine[0], readLine[1])
    }
}

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

class Program {
    private let inputManager = InputManager()
    private let calculator = Calculator()
    
    func run() {
        do {
            let testCase = try inputManager.getNumberOfTestCases()
            for i in 1...testCase {
                let (a, b) = try inputManager.readTwoNumbers()
                let result = calculator.add(a, b)
                print("Case #\(i): \(a) + \(b) = \(result)")
            }
        } catch let error as InputError {
            print(error.errorMessages)
        } catch {
            print("알 수 없는 오류가 발생했습니다.")
        }
    }
}

let program = Program()
program.run()
