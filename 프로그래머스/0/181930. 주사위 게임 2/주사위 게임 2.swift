import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    if a == b && b == c {
        return (a+b+c) * (a*a + b*b + c*c) * (a*a*a + b*b*b + c*c*c)
    }else if a == c || a == b || b == c {
        return (a+b+c) * (a*a + b*b + c*c)
    }else{
        return a + b + c
    }
    return 0
}