var words: [String] = []
var result = ""

for _ in 0..<5 {
    if let input = readLine() {
        words.append(input)
    }
}

for i in 0..<15 {
    for word in words {
        if i < word.count {
            let index = word.index(word.startIndex, offsetBy: i)
            result.append(word[index])
        }
    }
}

print(result)