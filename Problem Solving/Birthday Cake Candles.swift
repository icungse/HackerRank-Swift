func birthdayCakeCandles(candles: [Int]) -> Int {
    var result = 0
    let tallest = candles.max() ?? 0

    for candle in candles {
        if tallest == candle {
            result += 1
        }
    }

    return result
}