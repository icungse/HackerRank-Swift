func timeConversion(s: String) -> String {
    guard let hh = Int(s.prefix(2)) else {
        fatalError("bad input")
    }
    
    var time = String(s.dropLast(2))
    
    if hh < 12, s.hasSuffix("PM") {
        time = String(time.dropFirst(2))
        time = "\(hh + 12)\(time)"
    } else if hh == 12, s.hasSuffix("AM") {
        time = String(time.dropFirst(2))
        time = "00\(time)"
    }
    
    return time
}