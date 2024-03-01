func multiply() {
    guard let readLine0 = readLine(), let readLine1 = readLine(),
            let a = Int(readLine0), let b = Int(readLine1) 
    else {
        print("입력 형식이 올바르지 않습니다.")
        return
    }
    
    let b1 = b / 100
    let b2 = (b / 10) % 10
    let b3 = b % 10
    
    let result1 = a * b3
    let result2 = a * b2
    let result3 = a * b1
    let finalResult = a * b
    
    print(result1)
    print(result2)
    print(result3)
    print(finalResult)
}

multiply()
