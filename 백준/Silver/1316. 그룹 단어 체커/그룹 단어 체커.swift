func isGroupWord(_ word: String) -> Bool {
    var seen: Set<Character> = []
    var lastChar: Character = word.first!

    for char in word {
        if char != lastChar && seen.contains(char) {
            return false
        }
        seen.insert(char)
        lastChar = char
    }
    return true
}

let n = Int(readLine()!)!
var count = 0

for _ in 1...n {
    let word = readLine()!
    if isGroupWord(word) {
        count += 1
    }
}

print(count)