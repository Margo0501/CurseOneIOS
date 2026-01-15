import UIKit

var greeting = "Hello, playground"

/* 1.Написать переменные и константы всех базовых типов данных: Int, Bool, Float,
Double, String. Наделите переменные смыслом. У чисел вывести их минимальные и максимальные значения (Int8/16...
UInt...), а у строки – количество символов.*/

let Int = 15
let Bool = true
let Float = 12.3
let Double = 123.45
let String = "Hello, people!"
print(String.count)

var numberOfStudents = 14
var isStudentsGraduated = true
var averageGrade = 8.5
var nameOfSchool = "The School number 7"
var averageNumberOfSubgects: Float = 2.5678
print(nameOfSchool.count)


let minInt8 = Int8.min
let maxInt8 = Int8.max
let minInt16 = Int16.min
let maxInt16 = Int16.max
let minInt32 = Int32.min
let maxInt32 = Int32.max
let minInt64 = Int64.min
let maxInt64 = Int64.max
let minUInt8 = UInt8.min
let maxUInt8 = UInt8.max
let minUInt16 = UInt16.min
let maxUInt16 = UInt16.max
let minUInt32 = UInt32.min
let maxUInt32 = UInt32.max
let minUInt64 = UInt64.min
let maxUInt64 = UInt64.max
print(minInt8, maxInt8, minInt16, maxInt16, minInt32, maxInt32, minInt64, maxInt64, minUInt8,maxUInt8, minUInt16, maxUInt16, minUInt32, maxUInt32, minUInt64, maxUInt64)

/*2. Написать различные выражения с приведением типа. Минимум 6 выражений.*/

let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousandOne = twoThousand + UInt16(one)
print(twoThousandOne)

// TODO:
//var stringOfNumbers = "375445709081"
//var mobilePhone = Int(stringOfNumbers)
//
//let three = 3
//let pointOneFour =  0.14
//let pi = Double(three) + pointOneFour
// ругается компилятор не понимаю почему((

/* 3.Произвести различные вычисления с математическими операторами (умножение,
деление, сложение, вычитание, деление с остатком). Выводить результат в консоль в таком виде: 3
+ 2 = 5 (использовать интерполяцию строк). */
let a = 3
let b = 2
let sum = a + b
let substraction = a - b
let multiplication = a * b
let division = a / b
print("\(a) + \(b) = \(sum)")
print("\(a) - \(b) = \(substraction)")
print(multiplication)
print(division)

/* 4.С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).*/

let timeDescription = 4
let nightBegin = 22
let nightEnd = 6

if timeDescription >= 0 && timeDescription < 6 {
    print ("isNight")
} else if timeDescription >= 6 && timeDescription < 22 {
    print ("isDay")
} else if timeDescription >= 22 && timeDescription <= 24 {
    print ("isNight")
} else {
    print("Incorrect time")
}

/* 5.Сделать проверку: является ли число четным: 13, 2, 20, 21, 76. (Число X является четным/нечетным!)*/

let numbers = [13,2,20,21,76]
for number in numbers {
    if number % 2 == 0 {
        print ("\(number) is even")
    }else {
        print("Is an odd \(number)")}
}

/* 6.В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
Определить, в какую декаду месяца попадает это число (в первую, вторую или
третью).*/

let day = 5
switch day {
case 1...10:
    print("первая декада месяца")
case 11...20:
    print("вторая декада месяца")
case 21...31:
    print("третья декада месяца")
default:
    break
}

/* 7.Дана строка, состоящая из символов, например, “bbppeeyy”. Проверить, что
первым символом этой строки является буква “a” (или любая другая). Если это так –
вывести 'да', в противном случае - ‘нет’. Затем поменяйте строку, чтобы условие
соблюдалось. Поэкспериментируйте с разными строками.*/

var strangeString = "bbppeeyy"
if strangeString.first == "a" {
    print("да")} else {
        print("нет")
    }
strangeString = "a" + strangeString.dropFirst()
print("строка изменена: \(strangeString)")

strangeString = "e" + strangeString.dropLast()
print("строка изменена: \(strangeString)")

strangeString = "y" + strangeString.dropFirst()
print("строка измнена: \(strangeString)")

/* 8.Вывести таблицу умножения в консоль с помощью циклов for in.*/

let newNumbers = [1,2,3,4,5,6,7,8,9,10]
for oneNumber in newNumbers {
    for twoNumber in newNumbers {
        let result = oneNumber * twoNumber
        print("\(oneNumber) * \(twoNumber) = \(result)")
    }
}
