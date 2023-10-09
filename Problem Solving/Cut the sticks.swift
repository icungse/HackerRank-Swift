func cutTheSticks(arr: [Int]) -> [Int] {
    var result: [Int] = []
    var tempArr = arr
    
    while !tempArr.isEmpty {
        let shortest = tempArr.min() ?? 0
        var repetition = 0
        
        for i in 0..<tempArr.count {
            tempArr[i] -= shortest
            repetition += 1
        }
        
        tempArr = tempArr.filter {
            $0 > 0
        }
        result.append(repetition)
    }
    
    return result
}