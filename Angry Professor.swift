func angryProfessor(k: Int, a: [Int]) -> String {
    let onTime = a.filter {
        $0 <= 0
    }
    
    return onTime.count >= k ? "NO" : "YES"
}