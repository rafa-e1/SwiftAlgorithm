var matrix = [[Int]]()

for _ in 1...9 {
    if let line = readLine()?.split(separator: " ").map({ Int($0)! }) {
        matrix.append(line)
    }
}

var maxValue = matrix[0][0]
var maxRow = 1
var maxCol = 1

for i in 0..<9 {
    for j in 0..<9 {
        if matrix[i][j] > maxValue {
            maxValue = matrix[i][j]
            maxRow = i + 1
            maxCol = j + 1
        }
    }
}

print(maxValue)
print("\(maxRow) \(maxCol)")