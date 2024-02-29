let line = readLine()!
let lineArray = line.split(separator: " ")

let firstDice = Int(lineArray[0])!
let secondDice = Int(lineArray[1])!
let thirdDice = Int(lineArray[2])!

let biggestNumberOfDice = Int(lineArray.max()!)!

if firstDice == secondDice && secondDice == thirdDice {
    print(10_000 + firstDice * 1_000)
} else if firstDice == secondDice || secondDice == thirdDice {
    print(1_000 + secondDice * 100)
} else if firstDice == thirdDice {
    print(1_000 + thirdDice * 100)
} else {
    print(biggestNumberOfDice * 100)
}