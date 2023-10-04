func viralAdvertising(n: Int) -> Int {
    var shared = 5
    var liked = 0
    var cumulative = 0
    
    for _ in 1...n {
        cumulative += shared / 2
        liked = shared / 2
        shared = liked * 3
    }
    
    return cumulative
}