func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    let letters = Array("abcdefghijklmnopqrstuvwxyz")
    
    for char in s {
        guard let index = letters.firstIndex(of:Character(char.lowercased())) else{
            result.append(char)
            continue
        }
        let shift = (index + n ) % 26
        let shiftChar = letters[shift]
        
        if char.isUppercase {
            result.append(shiftChar.uppercased())
        }else{
            result.append(shiftChar)
        }
    }
    return result
}