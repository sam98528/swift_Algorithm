/*
// 처음에 내가 직접 풀어본 방법. String의 sorted 함수가 있는 줄 몰랐다.
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
// 두번째로는 sorted 이용하고 reversed()까지 이용해서 푼 방법


func solution(_ s:String) -> String {
    var a = String(String(s.sorted()).reversed())
    return a
}

*/
//마지막으로는 reverse말고 애초에 sort할때 내림차순으로 설정하면된다. 
func solution(_ s:String) -> String {
    return String(s.sorted{$0 > $1})
}
