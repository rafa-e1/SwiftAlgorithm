func calculateScore() {
    guard let readLine = readLine(), let score = Int(readLine) else {
        print("올바른 점수를 입력하세요.")
        return
    }
    
    switch score {
    case 90...100: print("A")
    case 80...89: print("B")
    case 70...79: print("C")
    case 60...69: print("D")
    default: print("F")
    }
}

calculateScore()
