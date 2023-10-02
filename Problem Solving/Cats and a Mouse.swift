func catAndMouse(x: Int, y: Int, z: Int) -> String {
    if abs(x - z) == abs(y - z) {
        return "Mouse C"
    } else if abs(x - z) < abs(y - z) {
        return "Cat A"
    } else {
        return "Cat B"
    }
}