func isValidHour(_ startHour: Int) -> Bool {
    return startHour >= 0 && startHour <= 23
}

func isValidMinute(_ startMinute: Int) -> Bool {
    return startMinute >= 0 && startMinute <= 59
}

func isValidCookingTime(_ cookingTime: Int) -> Bool {
    return cookingTime >= 0 && cookingTime <= 1000
}

func calculateEndTime(startTime: (Int, Int), cookingTime: Int) -> (Int, Int) {
    let (startHour, startMinute) = startTime
    let totalMinutes = startHour * 60 + startMinute + cookingTime
    let endHour = totalMinutes / 60 % 24
    let endMinute = totalMinutes % 60
    return (endHour, endMinute)
}

func cookingTimeCalculator() {
    guard let inputTime = readLine()?.split(separator: " ").compactMap({ Int($0) }),
          inputTime.count == 2
    else {
        print("시간과 분만 입력해주세요.")
        return
    }
    
    guard let startHour = inputTime.first,
          let startMinute = inputTime.last,
          isValidHour(startHour),
          isValidMinute(startMinute)
    else {
        print("잘못된 시간 형식입니다.")
        return
    }
    
    guard let cookingTime = Int(readLine() ?? ""),
          isValidCookingTime(cookingTime)
    else {
        print("잘못된 요리 시간입니다.")
        return
    }

    let endTime = calculateEndTime(
        startTime: (startHour, startMinute),
        cookingTime: cookingTime
    )
    print("\(endTime.0) \(endTime.1)")
}

cookingTimeCalculator()
