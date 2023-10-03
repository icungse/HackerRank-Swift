func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHeight = height.max() ?? 0
    
    return maxHeight <= k ? 0 : maxHeight - k
}