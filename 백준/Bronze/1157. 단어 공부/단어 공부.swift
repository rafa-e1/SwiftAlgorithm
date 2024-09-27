let word = readLine()!.uppercased()
var frequency: [Character: Int] = [:]

for character in word {
    frequency[character, default: 0] += 1
}

let maxFrequency = frequency.values.max()!
let mostFrequentAlphabets = frequency.filter { $0.value == maxFrequency }

if mostFrequentAlphabets.count > 1 {
    print("?")
} else {
    print(mostFrequentAlphabets.first!.key)
}