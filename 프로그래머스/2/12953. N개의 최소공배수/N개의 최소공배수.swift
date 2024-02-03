func solution(_ arr:[Int]) -> Int {
    var lcmList : [Int] = []
    for i in 0..<arr.count-1{
        lcmList.append(lcm(arr[i],arr[i+1]))
    }
    var tempList : [Int] = []
    while(lcmList.count != 1) {
        tempList = []
        for i in 0..<lcmList.count-1{
            tempList.append(lcm(lcmList[i],lcmList[i+1]))
        }
        lcmList = tempList
    }
    return lcmList[0]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }else{
        return gcd(b,a%b)
    }
}

func lcm (_ a : Int, _ b: Int) -> Int {
    return (a*b) / gcd(a,b)
}