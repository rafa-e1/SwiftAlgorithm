func parseInput() -> [Int]? {
    guard let input = readLine()?.split(separator: " "), input.count == 3 else {
        print("입력 허용 범위 오류")
        return nil
    }

    let numbers = input.map { Int($0) }
    
    // numbers가 nil이 아니면 통과(즉, numbers가 모두 Int 타입이면 통과)
    guard !numbers.contains(where: { $0 == nil }) else {
        print("1부터 6 사이의 정수만 입력해주세요.")
        return nil
    }
    
    guard numbers.compactMap({ $0 }).allSatisfy({ 1...6 ~= $0 }) else {
        print("1부터 6 사이의 정수만 입력해주세요.1")
        return nil
    }
    
    return numbers.compactMap({ $0 })
}

func calculatePrize(dice: [Int]) -> Int {
    let (dice1, dice2, dice3) = (dice[0], dice[1], dice[2])
    
    if dice1 == dice2 && dice2 == dice3 {
        return 10000 + dice1 * 1000
    } else if dice1 == dice2 || dice1 == dice3 {
        return 1000 + dice1 * 100
    } else if dice2 == dice3 {
        return 1000 + dice2 * 100
    } else {
        return max(dice1, dice2, dice3) * 100
    }
}

func startGame() {
    guard let diceRolls = parseInput() else {
        return
    }

    let prize = calculatePrize(dice: diceRolls)
    print(prize)
}

startGame()
