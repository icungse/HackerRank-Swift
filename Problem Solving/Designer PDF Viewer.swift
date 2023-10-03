func designerPdfViewer(h: [Int], word: String) -> Int {
    let chars = (0..<26).map({
        Character(UnicodeScalar("a".unicodeScalars.first!.value + $0)!)
    })
    
    var dict: [Character: Int] = [:]
    
    for (height, char) in zip(h, chars) {
        dict[char, default: 0] = height
    }
    
    let width = word.count
    var heigt = 0
    
    for w in word {
        if let size = dict[w], size > heigt  {
            heigt = size
        }
    }
    
    return width * heigt
}