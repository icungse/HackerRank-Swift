func pickingNumbers(a: [Int]) -> Int {
    var result = 0
    
    for index in a.indices {
        var numbers = [a[index]]
        
        for secondIndex in a.indices {
            if index != secondIndex, abs(a[index] - a[secondIndex]) <= 1 {
                var numberFits = true
                
                for number in numbers {
                    if abs(number - a[secondIndex]) > 1 {
                        numberFits = false
                        break
                    }
                }
                
                if numberFits {
                    numbers.append(a[secondIndex])
                }
            }
        }
        
        result = numbers.count > result ? numbers.count : result
    }
    
    return result
}