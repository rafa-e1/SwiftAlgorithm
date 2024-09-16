var students = Array(1...30)

for _ in 0..<28 {
    let n = Int(readLine()!)!
    
    if let index = students.firstIndex(of: n) {
        students.remove(at: index)
    }
}

print("\(students.min()!)\n\(students.max()!)")