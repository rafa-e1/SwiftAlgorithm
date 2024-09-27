let input = readLine()!.split(separator: " ")
let reversedA = String(input[0].reversed())
let reversedB = String(input[1].reversed())

print(max(reversedA, reversedB))