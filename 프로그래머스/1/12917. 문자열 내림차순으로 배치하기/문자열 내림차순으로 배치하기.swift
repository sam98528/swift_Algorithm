/*

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

*/

/*

func solution(_ s:String) -> String {
    var a = String(String(s.sorted()).reversed())
    return a
}

*/
func solution(_ s:String) -> String {
    return String(s.sorted{$0 > $1})
}