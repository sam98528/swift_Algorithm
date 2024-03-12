import Foundation

func solution(_ n:Int) -> [Int] {
    var arr :[[Int]] = []
    for i in 1...n {
        arr.append(Array(repeating:0 , count: i))
    }
    var functionArr : [(Int)->Void] = []
    var x = -1
    var y = 0
    var num = 1
    
    functionArr.append { temp in
            for i in 0..<temp{
                x += 1
                arr[x][y] = num
                num += 1
            }
    }
    functionArr.append { temp in
            for i in 0..<temp{
                y += 1
                arr[x][y] = num
                num += 1
            }
    }
    
    functionArr.append { temp in
        for i in 0..<temp{
            x -= 1
            y -= 1
            arr[x][y] = num
            num += 1
        }
    }
    
    var order = 0
    for temp in stride (from : n, through: 1, by : -1){
        functionArr[order%3](temp)
        order += 1
    }
    let ans = arr.flatMap{$0}
    return ans
}