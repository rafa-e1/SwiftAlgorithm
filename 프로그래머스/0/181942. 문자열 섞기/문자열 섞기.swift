func solution(_ str1: String, _ str2: String) -> String {
    var result = ""
    for (c1, c2) in zip(str1, str2) {
        result.append(c1)
        result.append(c2)
    }
    return result
}