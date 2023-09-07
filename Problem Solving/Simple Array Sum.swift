func simpleArraySum(ar: [Int]) -> Int {
    /*
        Swift provide built-in method for sum all array int using `reduce(_:_:)`,
        so it should be done with:

        return ar.reduce(0, +)
    */

    var sums = 0
    
    for i in ar {
        sums += i
    }
    
    return sums
}