import Foundation

func solution(_ hp: Int) -> Int {
    guard hp >= 0, hp <= 1000 else { return 0 }
    
    let generalAnt = 5
    let soldierAnt = 3
    let workerAnt = 1
    
    var remainingHP = hp
    var antCount = 0
    
    antCount += remainingHP / generalAnt
    remainingHP %= generalAnt
    
    antCount += remainingHP / soldierAnt
    remainingHP %= soldierAnt
    
    antCount += remainingHP
    
    return antCount
}