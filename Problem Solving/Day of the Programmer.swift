func dayOfProgrammer(year: Int) -> String {
    let isJulian = year <= 1917
    
    if year == 1918 {
        return "26.09.1918"
    } else if (!isJulian && (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))) || (isJulian && year % 4 == 0) {
        return "12.09.\(String(year))"
    }
    
    return "13.09.\(String(year))"
}