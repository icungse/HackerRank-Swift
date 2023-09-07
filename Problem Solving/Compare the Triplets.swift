/*
    Using zip to sequence two arrays and compare both value a and b.
    Variable points[0] indices for Alice and points[1] for Bob
    If value a greater than b so points for Alice, and vice versa.
    But if a == b there will be no point for both of them
*/

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var points = [0, 0]
    
    for (a, b) in zip(a, b) {
        if a > b {
            points[0] += 1
        } else if a < b {
            points[1] += 1
        }
    }
    
    return points
}