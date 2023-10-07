func appendAndDelete(s: String, t: String, k: Int) -> String {
    var similiarity = 0
    
    for (i, j) in zip(s, t) {
        if i == j {
            similiarity += 1
        } else {
            break
        }
    }
    
    let differenceTooBig = s.count + t.count - 2 * similiarity > k
    let differenceBalance = (s.count - t.count - 2 * similiarity - k) % 2 == 0
    let fewOperationLeft = s.count + t.count - k < 0

    return !differenceTooBig && differenceBalance || fewOperationLeft ? "Yes" : "No"
}