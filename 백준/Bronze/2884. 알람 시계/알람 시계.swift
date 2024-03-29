func isValidHour(_ hour: Int) -> Bool {
    return hour >= 0 && hour <= 23
}

func isValidMinute(_ minute: Int) -> Bool {
    return minute >= 0 && minute <= 59
}

func parseUserInput() -> (Int, Int)? {
    guard let readLine = readLine()?.split(separator: " ") else {
        print("입력을 확인해주세요.")
        return nil
    }
    
    guard readLine.count == 2 else {
        print("입력 허용 범위를 벗어났습니다.")
        return nil
    }
    
    guard readLine.allSatisfy({ $0.allSatisfy { $0.isNumber } }) else {
        print("숫자만 입력해주세요.")
        return nil
    }
    
    guard let hour = Int(readLine[0]), let minute = Int(readLine[1]),
          isValidHour(hour), isValidMinute(minute) else {
        print("시간은 0부터 23까지, 분은 0부터 59까지의 정수만 입력 가능합니다.")
        return nil
    }
    
    return (hour, minute)
}

func setAlarmTime(hour: Int, minute: Int) -> (Int, Int) {
    var newHour = hour
    var newMinute = minute - 45
    
    if newMinute < 0 {
        newMinute += 60
        newHour = newHour == 0 ? 23 : newHour - 1
    }
    
    return (newHour, newMinute)
}

func runAlarm() {
    guard let (hour, minute) = parseUserInput() else {
        print("입력 형식이 올바르지 않습니다.")
        return
    }
    let (newHour, newMinute) = setAlarmTime(hour: hour, minute: minute)
    print(newHour, newMinute)
}

runAlarm()
