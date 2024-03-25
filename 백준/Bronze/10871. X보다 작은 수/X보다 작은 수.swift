let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
let n = inputNumbers[0]
let x = inputNumbers[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
let result = array.filter { $0 < x }.map { String($0) }.joined(separator: " ")
print(result)