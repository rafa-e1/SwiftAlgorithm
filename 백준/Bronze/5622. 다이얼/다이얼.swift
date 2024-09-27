func dialTime(for char: Character) -> Int {
    switch char {
    case "A", "B", "C": return 3
    case "D", "E", "F": return 4
    case "G", "H", "I": return 5
    case "J", "K", "L": return 6
    case "M", "N", "O": return 7
    case "P", "Q", "R", "S": return 8
    case "T", "U", "V": return 9
    case "W", "X", "Y", "Z": return 10
    default: return 0
    }
}

let input = readLine()!
var totalTime = 0

for char in input {
    totalTime += dialTime(for: char)
}

print(totalTime)