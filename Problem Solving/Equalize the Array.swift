func equalizeArray(arr: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    arr.forEach {
        dict[$0, default: 0] += 1
    }
    
    let modus = dict.values.max() ?? 0
    
    return arr.count - modus
}