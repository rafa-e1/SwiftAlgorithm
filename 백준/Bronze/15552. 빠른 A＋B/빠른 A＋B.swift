import Foundation

class FastIO {
    private var buffer: [UInt8]
    private var index: Int
    private var bytesRead: Int

    init() {
        buffer = [UInt8](repeating: 0, count: 8192)
        index = 0
        bytesRead = 0
    }

    private func read() -> UInt8 {
        if index >= bytesRead {
            bytesRead = fread(&buffer, 1, 8192, stdin)
            index = 0
        }

        defer { index += 1 }
        return buffer[index]
    }

    func readInt() -> Int {
        var num = 0
        var ch = read()
        while ch >= 48 && ch <= 57 {
            num = num * 10 + Int(ch - 48)
            ch = read()
        }
        return num
    }
}

func main() {
    let fio = FastIO()
    let n = fio.readInt()
    for _ in 0..<n {
        let a = fio.readInt()
        let b = fio.readInt()
        print(a + b)
    }
}

main()