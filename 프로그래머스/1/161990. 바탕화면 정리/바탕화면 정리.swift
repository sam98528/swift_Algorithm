import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var ans = [wallpaper.count,wallpaper[0].count,0,0]
    for (x,info) in wallpaper.enumerated(){
        for (y,char) in info.enumerated() {
            if String(char) == "#"{
                if x < ans[0] {
                    ans[0] = x
                }
                if y < ans[1]{
                    ans[1] = y
                }
                if x+1 > ans[2] {
                    ans[2] = x+1
                }
                if y+1 > ans[3]{
                    ans[3] = y+1
                }
            }
        }
    }
    
    return ans
}