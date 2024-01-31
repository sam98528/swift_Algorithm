func solution(_ s:String) -> String {
   let upper = Array(s.split(separator: " ", omittingEmptySubsequences: false)).map { subString -> String in
    if subString == "" {
        return ""
    } else {
        return subString.lowercased().prefix(1).uppercased() + subString.lowercased().dropFirst()
    }
}
    
    return upper.joined(separator: " ")
}