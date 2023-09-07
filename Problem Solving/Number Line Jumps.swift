func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if x2 > x1 && v2 > v1 {
        return "NO"
    }
    
    if v1 == v2, x2 > x1 {
        return "NO"
    }
    
    let result = (max(x1, x2) - min(x1, x2)) % (max(v1, v2) - min(v1, v2))
    return result == 0 ? "YES" : "NO"
}