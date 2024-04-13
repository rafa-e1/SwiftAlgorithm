import Foundation

func solution(_ price: Int) -> Int {
    guard price >= 10 && price <= 1_000_000 && price % 10 == 0 else { return 0 }
    
    switch price {
    case 500_000...:
        return price * 80 / 100
    case 300_000..<500_000:
        return price * 90 / 100
    case 100_000..<300_000:
        return price * 95 / 100
    default:
        return price
    }
}