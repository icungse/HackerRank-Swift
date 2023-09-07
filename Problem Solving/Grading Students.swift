func gradingStudents(grades: [Int]) -> [Int] {
    var results: [Int] = []
    
    for grade in grades {
        let remain = grade % 5
        if grade >= 38, 5 - remain < 3 {
            results.append(grade + 5 - remain)
        } else {
            results.append(grade)
        }
    }
    
    return results
}