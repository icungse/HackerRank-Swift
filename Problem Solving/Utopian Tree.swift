func utopianTree(n: Int) -> Int {
    var heigt = 0
    
    for i in 0...n {
        if i % 2 != 0 {
            heigt *= 2
        } else {
            heigt += 1
        }
    }
    
    return heigt
}