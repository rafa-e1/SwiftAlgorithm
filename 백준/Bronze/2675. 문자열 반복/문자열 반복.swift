let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ")
    let r = Int(input[0])!
    let s = String(input[1])

    var result = ""

    for char in s {
        result += String(repeating: char, count: r)
    }

    print(result)
}