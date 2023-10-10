func jumpingOnClouds(c: [Int]) -> Int {    
    var index = 0
    var jump = 0
    
    while index < c.count - 1 {
        if index < c.count - 2, c[index + 2] != 1 {
            index += 2
        } else {
            index += 1
        }
        jump += 1
    }
    
    return jump
}