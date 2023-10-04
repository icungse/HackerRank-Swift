func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    let days = Array(i...j)
    var result = 0
    
    for day in days {
        if abs(reverseDay(day) - day) % k == 0 {
            result += 1
        }
    }
    
    return result
}

private func reverseDay(_ day: Int) -> Int {
    var temp = day
    var reversed = 0
    var remainer = 0
    
    while (temp > 0) {
        remainer = temp % 10
        reversed = reversed * 10 + remainer
        temp = temp / 10
    }
    return reversed
}