import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
    let pricePerPortion = 12_000
    let pricePerDrink = 2_000

    return n * pricePerPortion + k * pricePerDrink - (n / 10) * pricePerDrink
}
