func quadrantN() {
    guard let readLine0 = readLine(), let readLine1 = readLine(),
          let x = Int(readLine0), let y = Int(readLine1)
    else {
        print("입력 형식이 올바르지 않습니다.")
        return
    }
    
    if x >= 0 && y >= 0 {
        print("1")
    } else if x < 0 && y >= 0 {
        print("2")
    } else if x < 0 && y < 0 {
        print("3")
    } else {
        print("4")
    }
}

quadrantN()
