func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    let rotation = k % a.count
    var arr = a
    let tempArr = a[a.count - rotation..<a.count]
    
    arr.removeSubrange(a.count - rotation..<a.count)
    arr = tempArr + arr
    
    var results: [Int] = []
    
    for i in queries {
        results.append(arr[i])
    }
    
    return results
}