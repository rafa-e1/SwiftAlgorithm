import Foundation

func solution(_ cipher: String, _ code: Int) -> String {
    var result = ""
    let length = cipher.count
    
    for i in stride(from: code - 1, to: length, by: code) {
        let index = cipher.index(cipher.startIndex, offsetBy: i)
        result.append(cipher[index])
    }
    
    return result
}