func repeatedString(s: String, n: Int) -> Int {
    let aCount = s.filter { $0 == "a"}.count
    
    if aCount == 0 {
        return 0
    } else if s.count == aCount && s.count % n == 0 {
        return aCount * n
    } else {
        let remaining = n % s.count
        var tempCount = (n / s.count) * aCount
        let sArr = s.map {
            $0
        }
        
        if remaining > 0 {
            for i in 0...remaining - 1 {
                if sArr[i] == "a" {
                    tempCount += 1
                }
            }
        }
        
        return tempCount
    }
}