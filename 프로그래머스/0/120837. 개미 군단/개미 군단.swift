import Foundation

func solution(_ hp: Int) -> Int {
    guard hp >= 0, hp <= 1000 else { return 0 }
    
    var hp = hp
    var result = 0
    
    for i in [5, 3, 1] {
        result += hp / i
        hp %= i
    }
    
    return result
}