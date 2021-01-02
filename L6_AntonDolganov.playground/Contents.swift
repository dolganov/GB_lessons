import UIKit
import Foundation

class FirstName {
    var name: String
    func chackName() -> String {
        return name
    }
    init(name: String) {
        self.name = name
    }
}
class SecondName {
    var sName1: String
    //var sName2: String
    func chackName2() -> String {
        return sName1
    }
    init(sName1: String, sName2: String) {
        self.sName1 = sName1
        //self.sName2 = sName2
    }
}
struct Stack<T> {
    private var names: [T] = []
    
    mutating func pop() -> T? {
        return names.removeLast()
    }
    
    mutating func push(_ name: T) {
        names.append(name)
    }
}

var stackOfSNames = Stack<SecondName>()
let j = [FirstName(name: "Anton"),FirstName(name: "Ivan"),FirstName (name: "Dima")]
var stackOfNames = Stack<FirstName>()
//stackSNames2.push(secondName(sName1: "D", sName2: "F"))
//stackSNames2.push(secondName(sName1: "B", sName2: "C"))

for i in j {
    stackOfNames.push(i)
    print(stackOfNames[i])
}
//stackOfNames["0","1","2"]
