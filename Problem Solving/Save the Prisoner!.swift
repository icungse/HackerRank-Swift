func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    let result = (s + m - 1) % n
    
    return result > 0 ? result : n
}