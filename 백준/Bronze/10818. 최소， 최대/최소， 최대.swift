let inputNumber = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let result = array.map { Int($0) }
print(result.min()!, result.max()!)