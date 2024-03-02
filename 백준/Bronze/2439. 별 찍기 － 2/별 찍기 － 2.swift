let inputNumber = Int(readLine()!)!

for i in 1...inputNumber {
    for _ in stride(from: inputNumber, to: i, by: -1) {
        print(" ", terminator: "")
    }
    
    for _ in stride(from: 0, to: i, by: 1) {
        print("*", terminator: "")
    }
    print("")
}