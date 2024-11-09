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

let resultMatrix = zip(matrixA, matrixB).map { zip($0, $1).map { $0 + $1 } }

for row in resultMatrix {
    print(row.map { String($0) }.joined(separator: " "))
}