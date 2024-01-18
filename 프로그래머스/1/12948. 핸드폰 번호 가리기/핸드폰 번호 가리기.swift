func solution(_ phone_number:String) -> String {
    var str = phone_number
    let count = str.count
    let endindex = str.index(str.endIndex, offsetBy: -4)
    str.replaceSubrange(str.startIndex..<endindex,with:String(repeating:"*",count: count-4))
    return str
}