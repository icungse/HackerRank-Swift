func staircase(n: Int) -> Void {
    var stairs = String()
    
    for i in (1...n).reversed() {
        stairs += String(repeating: " ", count: i - 1) + String(repeating: "#", count: n - i + 1) + "\n"
    }
    
    print(stairs)
}