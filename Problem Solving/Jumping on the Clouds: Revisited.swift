func jumpingOnClouds(c: [Int], k: Int) -> Int {
    let n = c.count
    var energy = 100
    var index = 0 {
        willSet {
            energy -= c[newValue] == 1 ? 3 : 1
        }
    }
    
    repeat {
        index = ((index + k) % n) == 0 ? 0 : (index + k) % n
    } while index != 0
    
    return energy
}