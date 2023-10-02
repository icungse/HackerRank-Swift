func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var wrappers = n / c
    var total = wrappers
    
    while wrappers >= m {
        let tempTotal = wrappers / m
        total += tempTotal
        wrappers = tempTotal + (wrappers % m)
    }
    
    return total
}