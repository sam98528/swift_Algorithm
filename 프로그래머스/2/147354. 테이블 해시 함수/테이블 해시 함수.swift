import Foundation

func solution(_ data:[[Int]], _ col:Int, _ row_begin:Int, _ row_end:Int) -> Int {
    var data = data.sorted {(first : [Int], second: [Int]) -> Bool in
        if first[col-1] == second [col-1]{
            return first[0] > second[0]
        }else{
            return first[col-1] < second[col-1]
        }
    }
    var tempArr : [Int] = []
    for index in row_begin-1...row_end-1{
        tempArr.append(s_i(data[index], index+1))
    }
    var ans = tempArr.reduce(0, {$0 ^ $1})
    return ans
}

func s_i(_ data :[Int], _ index : Int) -> Int{
    var sum = 0
    for temp in data {
        sum += temp % index
    }
    return sum
}
