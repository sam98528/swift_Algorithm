import Foundation

func solution(_ numbers:String) -> Int {
    let number = numbers.map{String($0)}
    var numSet : Set<Int> = []
    
    func genertesNumHelper(_ currentWord : String, _ temp: [String]){
        if let newWord = Int(currentWord) {
             numSet.insert(newWord)
        }
       
        for num in temp {
            let newWord = currentWord + num
            var newArr = temp
            if let index = newArr.firstIndex(of: num){
                newArr.remove(at: index)
            }
            genertesNumHelper(newWord, newArr)
        } 
    }
    
    genertesNumHelper("", number)
    
    
    func isPrime(_ number :Int) -> Bool{
        if number <= 1 {
            return false
        }
        if number == 2 {
            return true
        }
        
        let sqrtValue = Int(Double(number).squareRoot()) + 1
        
        for i in 2...sqrtValue {
            if number % i == 0 && i != number {
                return false
            }
        }
        return true
    }
    
    var ans = 0 
    for element in numSet {
        if isPrime(element) {
            ans += 1
           
        }
    }
    return ans
}