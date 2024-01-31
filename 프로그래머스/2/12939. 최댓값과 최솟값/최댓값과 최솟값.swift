func solution(_ s:String) -> String {
    let intArr = Array(s.split(separator: " ")).map{Int($0)!}
    return String(intArr.min()!) + " " + String(intArr.max()!)
}