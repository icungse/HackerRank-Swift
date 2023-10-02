func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var result = -1
    
    for k in keyboards {
        for d in drives {
            guard k + d <= b else {
                continue
            }
            
            result = max(result, k + d)
        }
    }
    
    return result
}