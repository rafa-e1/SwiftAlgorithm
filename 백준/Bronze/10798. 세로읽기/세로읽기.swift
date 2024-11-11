var words = [[Character]]()

for _ in 0..<5 {
    let line = Array(readLine()!)
    words.append(line)
}

var result = ""

for i in 0..<15 {
    for j in 0..<5 {
        if i < words[j].count {
            result.append(words[j][i])
        }
    }
}

print(result)