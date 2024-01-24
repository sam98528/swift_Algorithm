import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    let ans = cola(a,b,n,0)
    return ans
}

func cola(_ a:Int, _ b:Int, _ now:Int, _ ans: Int) -> Int {
    if now <= 1 || now < a{
        return ans
    }else{
        var sum = (now / a) * b
        var remains = (now % a) + sum
        return cola(a,b,remains,ans+sum)
    }
}