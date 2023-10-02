func countingValleys(steps: Int, path: String) -> Int {
    var position = 0
    var result = 0
    
    var isInValley: Bool = false {
        willSet {
            if newValue == true && isInValley == false {
                result += 1
            }
        }
    }
    
    var bellowSeaLevel: Bool {
        get {
            return position < 0 ? true : false
        }
    }
    
    for i in path {
        position += i == "U" ? 1 : -1
        isInValley = bellowSeaLevel ? true : false
    }
    
    return result
}