let size = readLine()!.split(separator: " ").map { Int($0)! }
let n = size[0]
let m = size[1]

var matrixA = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    matrixA.append(row)
}

var matrixB = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    matrixB.append(row)
}

var resultMatrix = [[Int]]()
for i in 0..<n {
    var resultRow = [Int]()
    for j in 0..<m {
        resultRow.append(matrixA[i][j] + matrixB[i][j])
    }
    resultMatrix.append(resultRow)
}

for row in resultMatrix {
    print(row.map { String($0) }.joined(separator: " "))
}