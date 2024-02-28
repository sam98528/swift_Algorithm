import Foundation
//test
func solution(_ word:String) -> Int {
    var dictionary : [String] = []
    
    let alphabet = ["A", "E", "I", "O", "U"]
    
    func generateWords() {
        for length in 1...5 {
            generateWordsHelper("", length)
        }
    }

    func generateWordsHelper(_ currentWord: String, _ length: Int) {
        if length == 0 {
            dictionary.append(currentWord)
            return
        }
    
        for letter in alphabet {
            let newWord = currentWord + letter
            generateWordsHelper(newWord, length - 1)
        }
    }
    generateWords()
    dictionary = dictionary.sorted(by: <)
    let ans = dictionary.firstIndex(of: word)! + 1
    //test
    return ans
}