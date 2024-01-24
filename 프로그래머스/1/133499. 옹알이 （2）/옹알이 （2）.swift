import Foundation

func solution(_ babbling:[String]) -> Int {
    let talk = ["ma","ye","aya","woo"]
    var temp = babbling
    var ans = 0
    
    for index in temp.indices {
        for (i,v) in talk.enumerated(){
            temp[index] = temp[index].replacingOccurrences(of:v, with: String(i))
        }
    }
    
    for word in temp {
        if (!checkRepeating(String(word)) && !checkAlphabet(String(word))){
            ans+=1
        }
    }
    return ans
}

func checkRepeating(_ string: String) -> Bool {
    var previousChar: Character?
    
    for char in string {
        if let previous = previousChar, char == previous {
            return true
        }
        previousChar = char
    }
    return false
}

func checkAlphabet(_ string: String) -> Bool {
    for char in string{
        if !char.isNumber {
            return true
        }
    }
    return false
}
    