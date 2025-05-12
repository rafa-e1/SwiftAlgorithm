import Foundation

func solution(_ strArr: [String]) -> [String] {
    return strArr.enumerated().map { index, str in
        return index % 2 == 0 ? str.lowercased() : str.uppercased()
    }
}