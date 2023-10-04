func permutationEquation(p: [Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 1...p.count {
        let x: Int = p.firstIndex(of: i)! + 1
        let y: Int = p.firstIndex(of: x)! + 1
        
        result.append(y)
    }
    
    return result
}