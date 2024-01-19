func solution(_ s:String) -> String {
let words = s.components(separatedBy: " ")
    
    let transformedWords = words.map { word -> String in
        var transformedWord = ""
        
        for (index, char) in word.enumerated() {
            if index % 2 == 0 {
                transformedWord += String(char).uppercased()
            } else {
                transformedWord += String(char).lowercased()
            }
        }
        
        return transformedWord
    }
    
    return transformedWords.joined(separator: " ")
}