class DataTypeGenerator {
    func generateDataTypeName(forSize size: Int) -> String {
        let numberOfLongs = size / 4
        return String(repeating: "long ", count: numberOfLongs) + "int"
    }
}

class InputHandler {
    func input() -> String? {
        return readLine()
    }
    
    func validateSize(_ input: String) -> Int? {
        guard let size = Int(input), size % 4 == 0 else {
            print("잘못된 입력입니다. 4의 배수를 입력해주세요.")
            return nil
        }
        return size
    }
}

class Program {
    private let dataTypeGenerator = DataTypeGenerator()
    private let inputHandler = InputHandler()
    
    func run() {
        guard let input = inputHandler.input(),
              let size = inputHandler.validateSize(input)
        else {
            return
        }
        
        let dataTypeName = dataTypeGenerator.generateDataTypeName(forSize: size)
        print(dataTypeName)
    }
}

let program = Program()
program.run()
