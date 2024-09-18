let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var baskets = Array(1...n)

for _ in 0..<m {
    let range = readLine()!.split(separator: " ").map { Int($0)! }
    let i = range[0] - 1
    let j = range[1] - 1
    
    baskets[i...j].reverse()
}

print(baskets.map { String($0) }.joined(separator: " "))