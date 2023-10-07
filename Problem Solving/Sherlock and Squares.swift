func squares(a: Int, b: Int) -> Int {
    var count = 0

    if (Int(ceil(sqrt(Double(a))))) <= (Int(floor(sqrt(Double(b))))) {
        for _ in (Int(ceil(sqrt(Double(a)))))...(Int(floor(sqrt(Double(b))))) {
            count += 1
        }
    }
    
    return count
}