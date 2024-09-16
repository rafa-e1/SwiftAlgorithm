var remainders = Set<Int>()

for _ in 0..<10 {
    if let inputNumbers = Int(readLine()!) {
        let remainder = inputNumbers % 42
        remainders.insert(remainder)
    }
}

print(remainders.count)