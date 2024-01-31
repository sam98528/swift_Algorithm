import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let yellowSqrtN = Int(Double(yellow).squareRoot())
    var tempWidth = 0
    var tempLength = 0
    var ans :[Int] = [0,0]
    
    for i in 1...yellowSqrtN {
        if yellow % i == 0 {
            tempWidth = i
            if yellow / i != i {
                tempLength = yellow / i 
            }else{
                tempLength = tempWidth
            }
            let newPerimeter = 2 * ((tempWidth + 2) + (tempLength+2)) - 4
            if newPerimeter == brown {
                ans[0] = max(tempWidth+2, tempLength+2)
                ans[1] = min(tempWidth+2, tempLength+2)
                break
            }
        }  
    }
    return ans
}