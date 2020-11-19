//
//  main.swift
//  L1_AntonDolganov
//
//  Created by Anton Dolganov on 11/18/20.
//

import Foundation
/*
ax2 + bx + c = 0
D = b^2 − 4ac
Если D < 0, корней нет;
Если D = 0, есть ровно один корень;
Если D > 0, корней будет два.
 
 if D > 0 x1 = (-b + pow(d, 0.5))/2*a x2 = (-b - pow(D, 0.5))/2*a;
 if D = 0 then  x = (-b + pow(d, 0.5))/2*a
 if D < 0 then
 

var c: Int = 2
var power: Double = 0.5
var ex = pow(Double(c), Double(power))
print(ex) */

//x^2 − 2x − 3 = 0;
let a: Int = 1
var b: Int = Int(pow(Double(-2), Double(2)))
let c: Int = -3
var D: Int = b - (4 * a * c)
b = -2
print("a =", a, "b =",b, "c =", c, "D =", D)
var x1 = (-1 * (b) + Int(pow(Double(D), Double(0.5)))) / 2 * a
var x2 = (-1 * (b) - Int(pow(Double(D), Double(0.5)))) / 2 * a
print("X1 =", x1)
print("X2 =", x2)



/*
 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
 P – периметр
 S – площадь
 a,b – катеты, образующие прямой угол
 c – гипотенуза
1. S = a*b/2
2. C^2 = a^2 + b^2 or c = (a^2 + b^2)^0.5
3. P = a + b + c
 */

var a1 = 3
var b2 = 4
var s = (a1 * b2) / 2
var c1 = Int((pow(Float(a1) , 2) + pow(Float(b2) , 2)))
var c2 = Int(pow(Float(c1), 0.5))
var p = a1 + b2 + c2
print("(A) катет =", a1, "(B) катет =", b2, "(C) гипотенуза =", c2, "\n(P) периметр =", p, "(S) площадь =", s)

/*
 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через                             5 лет.
 */
print("Введите сумму вклада")
var InputDeposit = Double(readLine(strippingNewline: true)!)!
print("годовой процент")
var InputYearPercentage = Double(readLine(strippingNewline: true)!)!
//var SummOfDeposit = (InputDeposit * InputYearPercentage2 * 1825) / (365 * 100))
//print(SummOfDeposit, InputYearPercentage, InputYearPercentage2, InputDeposit)

//var InputYearPercentage2 = InputYearPercentage/100
InputYearPercentage = InputYearPercentage / 100
//var summ: Double = 0
var y1 = 0
var yMax = 0
var sum:Int = 0
print("Изменения по годам")
for i in 1...5 {
    InputDeposit = InputDeposit + (InputDeposit * InputYearPercentage)
    InputDeposit = Double(round(1000 * InputDeposit) / 1000)
    yMax = i
    print(yMax,  "year:",InputDeposit, "руб")
}
//print(InputYearPercentage, InputDeposit, yMax)

