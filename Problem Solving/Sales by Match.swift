func sockMerchant(n: Int, ar: [Int]) -> Int {
    var dicts: [Int: Int] = [:]
    var pairs = 0
    
    for i in ar {
        dicts[i, default: 0] += 1
    }
    
    for (_, value) in dicts {
        pairs += (value / 2)
    }
    
    return pairs
}