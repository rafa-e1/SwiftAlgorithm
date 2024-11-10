var maxNumber = 0
var x = 0
var y = 0

for i in 0...8 {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0...8 {
        if numbers[j] > maxNumber {
            maxNumber = numbers[j]
            x = i
            y = j
        }
    }
}

print(maxNumber)
print("\(x + 1) \(y + 1)")