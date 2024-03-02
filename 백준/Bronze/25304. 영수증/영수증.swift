let x=Int(readLine()!)!
var n=0
for _ in 1...Int(readLine()!)!{n+=readLine()!.split{$0==" "}.map{Int($0)!}.reduce(1,*)}
print(x==n ?"Yes":"No")