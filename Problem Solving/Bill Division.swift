func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var annaBill = bill
    annaBill.remove(at: k)
    
    let totalAnnaBill = annaBill.reduce(0, +) / 2
    
    if totalAnnaBill == b {
        print("Bon Appetit")
    } else {
        print(b - totalAnnaBill)
    }
}