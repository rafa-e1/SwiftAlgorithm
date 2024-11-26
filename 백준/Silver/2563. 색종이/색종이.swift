let n = Int(readLine()!)!
var paper = Array(repeating: Array(repeating: false, count: 100), count: 100) // 100x100 도화지

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    let x = inputs[0]
    let y = inputs[1]
    
    for i in x..<x+10 {
        for j in y..<y+10 {
            paper[i][j] = true
        }
    }
}

var blackArea = 0
for i in 0..<100 {
    for j in 0..<100 {
        if paper[i][j] {
            blackArea += 1
        }
    }
}

print(blackArea)