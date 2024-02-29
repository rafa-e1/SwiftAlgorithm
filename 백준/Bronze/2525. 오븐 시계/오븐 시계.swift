let t=readLine()!.split(separator: " ").map{Int($0)!},i=Int(readLine()!)!,m=t[1]+i
print((t[0]+m/60)%24,m%60)