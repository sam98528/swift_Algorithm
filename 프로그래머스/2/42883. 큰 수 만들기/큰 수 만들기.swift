/*
1. stack을 만든다 
2. 주어진 숫자 문자열을 순회한다.
2-1. 만약 stack에 last에 있는 숫자가 현재 숫자 문자열의 num 보다 작고, k 는 0 보다 크다면, k -= 1, stack.removeLast()를 한다.
	- 이 과정은 숫자 문자열을 순회하면서, 가능한 큰 숫자들만 stack 쌓기 위해서이다. 
2-2. 현재 num을 stack 위에 쌓는다. 
3. 만약 k가 0이 아니라면, 즉 stack을 다 쌓았는데, k 개수 만큼 숫자를 뺴지 못한다면, stack에서 k 만큼 제거한다.

예를 들자면 
number = "63729" , k = 2 로 가정을 하자면
문자열을 순회 :
	현재 문자 6, stack : nil
    	[stack이 비어있기 때문에]
    	stack.append(6)
        [stack : 6]
    현재 문자 3, stack : 6
    	[stack에 있는 6이 3보다 크기 때문에]
        stack.append(3)
        [stack : 6, 3]
    현재 문자 7, stack : 6, 3
    	[stack에 있는 3이 7보다 작기 때문에]
        	k -= 1 (현재 상태 1)
            stack.removeLast() 
            [stack : 6, 7]
        stack.append(7)
        [stack : 6, 7]
    현재 문자 2, stack : 6, 7
    	[stack에 있는 7이 2보다 크기 때문에]
        stack.append(2)
        [stack : 6, 7, 2]
    현재 문자 9, stack : 6, 7, 2
    	[stack에 있는 2이 9보다 작기 때문에]
        	k -= 1 (현재 상태 0)
            stack.removeLast() 
            [stack : 6, 7]
        stack.append(9)
        [stack : 6, 7, 9]
  [k 가 0 이기 때문에]
  	return String(stack)
*/
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var ans : [Character] = []
    var k = k 
    
    for num in number {
        while let lastNum = ans.last, lastNum < num, k > 0 {
            k -= 1
            ans.removeLast()
        }
        ans.append(num)
    }
    if k != 0 {
        ans.removeLast(k)
    }
    
    return String(ans)
}
