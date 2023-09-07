/*
    This could be done with `ar.reduce(0, +)`, but its not chalanging.
    So this func operation is like elementary school math.
    Loop every last digit and sum all last digit.

    1000000001
    1000000002
    1000000003
    1000000004
    1000000005
    ---------- +
    5000000015 => Result
*/

func aVeryBigSum(ar: [Int]) -> Int {
    let stringArr = ar.map {
        String($0).map {
            String($0)
        }
    }
    
    var resultString: [String] = []
    
    guard let count = stringArr.first?.count, count > 0 else {
        fatalError()
    }
    
    
    var remaining = 0
    
    for i in (0..<count).reversed() {
        var temp = 0
        
        for j in stringArr {
            temp += Int(j[i]) ?? 0
        }
        if remaining > 0 {
            temp += remaining
            remaining = 0
        }
        
        if temp > 10 {
            remaining = temp / 10
            temp = temp % 10
        }
        resultString.insert(String(temp), at: 0)
    }
    
    return Int(resultString.joined(separator: "")) ?? 0
}