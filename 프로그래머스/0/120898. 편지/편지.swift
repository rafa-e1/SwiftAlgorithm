import Foundation

func solution(_ message: String) -> Int {
    guard message.count >= 1, message.count <= 50 else { return 0 }
    let messageLength = message.count
    let requiredWidth = messageLength * 2
    return requiredWidth
}