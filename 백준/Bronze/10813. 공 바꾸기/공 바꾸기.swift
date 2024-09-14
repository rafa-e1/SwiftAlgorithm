let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
let n = inputNumbers[0]
let m = inputNumbers[1]
var baskets = Array(1...n)

for _ in 0..<m {
    let index = readLine()!.split(separator: " ").map { Int($0)! }
    let i = index[0] - 1
    let j = index[1] - 1
    let temp = baskets[i]
    baskets[i] = baskets[j]
    baskets[j] = temp
}

print(baskets.map { String($0) }.joined(separator: " "))