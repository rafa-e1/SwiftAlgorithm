import Foundation

func solution(_ money: Int) -> [Int] {
    guard money >= 0, money <= 1_000_000 else { return [] }
    
    let price = 5_500
    let numberOfCoffee = money / price
    let changes = money % price
    
    return [numberOfCoffee, changes]
}