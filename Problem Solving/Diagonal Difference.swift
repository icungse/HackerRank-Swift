func diagonalDifference(arr: [[Int]]) -> Int {
    var leftSum = 0
    var rightSum = 0
    
    for i in 0..<arr.count {
        leftSum += arr[i][i]
        rightSum += arr[i][arr.count - i - 1]
    }
    
    return abs(leftSum - rightSum)
}