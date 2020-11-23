import UIKit

//1.  Написать функцию, которая определяет, четное число или нет.

func evenNumber(array: [Int]) -> [Int]{
    var realEvenArray: [Int] = []
    for arr in array {
        if (arr % 2) == 0 {
            realEvenArray.append(arr)
        }
    }
    return realEvenArray
}
print(evenNumber(array: [1,2,3,4,5,6,7,8,9,0,11,34,65,87654]))
print("==================================\n")

//2. Написать функцию, которая определяет, делится ли число без остатка на 3

func divisionByThree(array: [Int]) -> [Int]{
     var realEvenArray: [Int] = []
    for arr in array {
        if (arr % 3) == 0 {
            realEvenArray.append(arr)
        }
    }
    return realEvenArray
}
print(divisionByThree(array: [1,2,3,4,5,6,7,8,9,0,11,34,65,87654]))
print("==================================\n")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

func delNumber(array: [Int]) -> [Int]{
    var realEvenArray: [Int] = []
    var index = 0
    while index < realEvenArray.count {
        if realEvenArray[index] % 2 == 0  && realEvenArray[index] % 3 == 0{
            realEvenArray.remove(at: index)
            index -= 1
        }
        index += 1
    }
    return realEvenArray
}
print(delNumber(array: [1,2,3,4,5,6,7,8,9,0,11,34,789,890,654334,0923,8756,0989,65,87654]))
print("==================================\n")

// с последним не разобрался



