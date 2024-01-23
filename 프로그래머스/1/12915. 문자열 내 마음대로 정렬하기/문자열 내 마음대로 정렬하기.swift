func solution(_ strings:[String], _ n:Int) -> [String] {
   return strings.sorted(by: {
        let index = $0.index($0.startIndex, offsetBy: n)
        if $0[index] == $1[index] {
            return $0 < $1
        } else {
            return $0[index] < $1[index]
        }
    })
}