let standardPieces = [1, 1, 2, 2, 2, 8]
let foundPieces = readLine()!.split(separator: " ").map { Int($0)! }
let result = zip(standardPieces, foundPieces).map { $0 - $1 }

print(result.map { String($0) }.joined(separator: " "))