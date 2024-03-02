(1...Int(readLine()!)!).map{let n=readLine()!.split{$0==" "}.map{Int($0)!}
print("Case #\($0): \(n[0]) + \(n[1]) = \(n[0]+n[1])")}