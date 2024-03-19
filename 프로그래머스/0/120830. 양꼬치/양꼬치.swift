import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
    guard (n > 0 && n < 10_000), (k >= n / 10 && k < 1_000) else { return 0 }
    let pricePerLamb = 12_000
    let pricePerDrink = 2_000
    return (n * pricePerLamb) + ( (k - (n / 10)) * pricePerDrink) 
}
