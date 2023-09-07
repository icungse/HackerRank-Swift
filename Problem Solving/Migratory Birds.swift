func migratoryBirds(arr: [Int]) -> Int {
   var dict: [Int: Int] = [:]
   
   for i in arr {
       dict[i, default: 0] += 1
   }
   
   let maxValue = dict.values.max()
   
   dict = dict.filter { _, value in
       value == maxValue
   }
   
   return dict.keys.min() ?? 0
}