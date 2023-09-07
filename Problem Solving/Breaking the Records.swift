func breakingRecords(scores: [Int]) -> [Int] {
    var highscore = scores.first ?? 0
    var lowestScore = scores.first ?? 0
    var result = [0, 0]
    
    for score in scores {
        if score > highscore {
            result[0] += 1
            highscore = score
        } else if score < lowestScore {
            result[1] += 1
            lowestScore = score
        }
    }
    
    return result
}