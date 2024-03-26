let a=readLine()!.split{$0==" "}.map{Int($0)!},b=readLine()!.split{$0==" "}.map{Int($0)!}.filter{$0<a[1]}
print(b.map{String($0)}.joined(separator:" "))