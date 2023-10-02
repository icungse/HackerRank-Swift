func serviceLane(n: Int, cases: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in cases {
        let smallest = width[(i.first ?? 0)...(i.last ?? 0)].min() ?? 0
        result.append(smallest)
    }
    
    return result
}