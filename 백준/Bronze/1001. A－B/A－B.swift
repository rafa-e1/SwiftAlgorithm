let line = readLine()!
let numbers = line.split(separator: " ").map { Int($0)! }
print(numbers.reduce(0) { -$0 - $1 })