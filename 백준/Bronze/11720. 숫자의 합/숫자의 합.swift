let n = Int(readLine()!)!
let numbers = readLine()!

if numbers.count == n {
    let sum = numbers.reduce(0) { $0 + Int(String($1))! }
    print(sum)
}