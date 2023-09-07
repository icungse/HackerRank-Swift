func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result = 0
    
    for i in 0..<ar.count {
        for j in i + 1..<ar.count {
            if (ar[i] + ar[j]) % k == 0 {
                print("\(i): \(j)")
                result += 1
            }
        }
    }
    
    return result
}