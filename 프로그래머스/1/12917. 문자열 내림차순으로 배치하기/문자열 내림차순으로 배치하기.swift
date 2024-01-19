func solution(_ s:String) -> String {
    var temp = s
    var arr : [String] = []
    for i in temp {
        arr.append(String(i))
    }
    arr.sort()
    arr.reverse()
    let ans = arr.map {String($0)}.joined()
    return ans
}