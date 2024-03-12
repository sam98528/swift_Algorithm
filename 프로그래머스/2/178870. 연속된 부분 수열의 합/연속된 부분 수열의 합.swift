import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var indexRecord : [[Int]] = []
    var point1 = 0
    var point2 = 0
    var sum = sequence[0]
    
    while(point1 < sequence.count && point2 < sequence.count){
        if sum == k {
            indexRecord.append([point1,point2])
        }
        
        if sum < k {
            point2 += 1
            if point2 == sequence.count{break}
            sum += sequence[point2]
        }else{
            sum -= sequence[point1]
            point1 += 1
        }
    }
    indexRecord = indexRecord.sorted(by: {
        if $0[1] - $0[0] >= $1[1] - $1[0]{
            return $0[0] < $1[0]
        } else{
            return $0[0] > $1[0]
        }
    })
    
    return indexRecord[0]
}
