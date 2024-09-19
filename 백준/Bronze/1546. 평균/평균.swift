let n = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").map { Double($0)! }
let maxScore = scores.max()!
let newScores = scores.map { $0 / maxScore * 100 }
let newAverage = newScores.reduce(0, +) / Double(n)

print(newAverage)