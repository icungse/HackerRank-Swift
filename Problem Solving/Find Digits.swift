func findDigits(n: Int) -> Int {
    let stringDigits = String(n)
    var result = 0
    
    for i in stringDigits {
        guard 
            let number = Int(String(i)), 
            number != 0 
        else {
            continue
        }
        
        if n % number == 0 {
            result += 1
        }
    }    
    
    return result
}