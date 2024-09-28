import Foundation

func countCroatianAlphabets(_ word: String) -> Int {
    let croatianAlphabets = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var modifiedWord = word
    
    for croatianAlphabet in croatianAlphabets {
        modifiedWord = modifiedWord.replacingOccurrences(of: croatianAlphabet, with: "1")
    }
    
    return modifiedWord.count
}

print(countCroatianAlphabets(readLine()!))