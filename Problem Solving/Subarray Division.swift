func birthday(s: [Int], d: Int, m: Int) -> Int {
    var result = 0
    
    for i in 0...s.count - m {
        if s[i..<i + m].reduce(0, +) == d {
            result += 1
        }
    }
    
    return result
}