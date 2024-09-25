let s = readLine()!
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var result = Array(repeating: -1, count: 26)

for (index, char) in s.enumerated() {
    if let charIndex = alphabet.firstIndex(of: char) {
        if result[charIndex] == -1 {
            result[charIndex] = index
        }
    }
}

print(result.map { String($0) }.joined(separator: " "))