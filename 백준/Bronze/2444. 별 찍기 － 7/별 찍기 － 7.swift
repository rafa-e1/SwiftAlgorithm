func printStars(readLine: Int) {
    for i in 1...readLine {
        let spaces = String(repeating: " ", count: readLine - i)
        let stars = String(repeating: "*", count: 2 * i - 1)
        print(spaces + stars)
    }

    for i in (1..<readLine).reversed() {
        let spaces = String(repeating: " ", count: readLine - i)
        let stars = String(repeating: "*", count: 2 * i - 1)
        print(spaces + stars)
    }
}

printStars(readLine: Int(readLine()!)!)