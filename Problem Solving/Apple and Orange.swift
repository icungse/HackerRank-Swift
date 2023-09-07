func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var applesCount = 0
    var orangesCount = 0
    let homeRange = s...t
    
    for apple in apples {
        if homeRange.contains(apple + a) {
            applesCount += 1
        }
    }
    
    for orange in oranges {
        if homeRange.contains(orange + b) {
            orangesCount += 1
        }
    }
    
    print(applesCount)
    print(orangesCount)
}