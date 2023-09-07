func miniMaxSum(arr: [Int]) -> Void {
    let min = arr.min() ?? 0
    let max = arr.max() ?? 0
    let sum = arr.reduce(0, +)
    
    print("\(sum - max) \(sum - min)")
}