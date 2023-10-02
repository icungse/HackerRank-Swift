func pageCount(n: Int, p: Int) -> Int {
    let midPage = n / 2
    
    if (0...midPage).contains(p) {
        return p / 2
    } else {
        if n - p == 1 && p % 2 != 0 {
            return 1
        } else {
            return (n - p) / 2
        }
    }
}