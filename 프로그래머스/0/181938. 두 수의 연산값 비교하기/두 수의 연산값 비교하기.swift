import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return max(Int(String(a)+String(b))!, 2 * a * b)
}