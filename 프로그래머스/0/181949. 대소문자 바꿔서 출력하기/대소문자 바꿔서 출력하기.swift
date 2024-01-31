import Foundation

let s1 = readLine()!

let ans = s1.map {character -> String in 
                 switch character{
                    case let uppercase where uppercase.isUppercase:
                        return character.lowercased()
                    case let lowercase where lowercase.isLowercase:
                        return character.uppercased()
                    default:
                        return String(character)
                 }
                }.joined()

print(ans)
