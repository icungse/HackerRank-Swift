func plusMinus(arr: [Int]) -> Void {
    var positive = 0
    var zero = 0
    var negative = 0
    
    let count: Double = Double(arr.count)
    
    for i in arr {
        if i > 0 {
            positive += 1
        } else if i < 0 {
            negative += 1
        } else {
            zero += 1
        }
    }
    
    let positiveRatio = Double(round(Double(positive) / count * 1000000) / 1000000)
    let negativeRatio = Double(round(Double(negative) / count * 1000000) / 1000000)
    let zeroRatio = Double(round(Double(zero) / count * 1000000) / 1000000)
    
    print(positiveRatio)
    print(negativeRatio)
    print(zeroRatio)
}