import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPattern = [1, 2, 3, 4, 5]
    let secondPattern = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var first : [Int] = []
    var second : [Int] = []
    var third : [Int] = []
    var score = [0,0,0]
    var ans :[Int] = []
    
    while first.count < answers.count {
        first.append(contentsOf:firstPattern)
    }
    while second.count < answers.count {
        second.append(contentsOf:secondPattern)
    }
    while third.count < answers.count {
        third.append(contentsOf:thirdPattern)
    }
    first = Array(first.prefix(answers.count))
    second = Array(second.prefix(answers.count))
    third = Array(third.prefix(answers.count))
    
    let total = [first,second,third]
    
    for i in 0..<answers.count{
        for j in 0..<total.count{
            if total[j][i] == answers[i] {
                score[j] += 1
            }
        }
    }
    let max = score.max()
    for k in 0..<score.count {
        if score[k] == max {
            ans.append(k+1)
        }
    }

    
    return ans
}

/* 더 나은 풀이 
func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

/*
