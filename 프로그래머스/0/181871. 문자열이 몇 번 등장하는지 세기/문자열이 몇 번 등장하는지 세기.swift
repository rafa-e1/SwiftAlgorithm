import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var count = 0
    let myArray = Array(myString)
    let patLength = pat.count

    for i in 0...(myArray.count - patLength) {
        let slice = String(myArray[i..<i+patLength])
        if slice == pat {
            count += 1
        }
    }
    return count
}