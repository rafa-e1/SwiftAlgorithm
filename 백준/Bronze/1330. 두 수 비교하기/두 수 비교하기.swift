var a=readLine()!.split{$0==" "}.map{Int($0)!},b=a[0]-a[1]
print(b>0 ?">":(b<0 ?"<":"=="))