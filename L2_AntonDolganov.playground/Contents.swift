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
print("================================== 1\n")

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
print("================================== 2\n")

//3. Создать возрастающий массив из 100 чисел.
var realArray:[Int] = []
for arr in 1...100 {
    realArray.append(arr)
}
print(realArray)
print("================================== 3\n")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.


   var index = 0
    while index < realArray.count {
        if realArray[index] % 2 == 0 || realArray[index] % 3 != 0{
            realArray.remove(at: index)
            index -= 1
        }
        index += 1
    }
print(realArray)
print("================================== 4\n")



// с последним не разобрался



