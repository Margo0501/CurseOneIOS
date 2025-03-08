import UIKit

/*1. Написать функции, которая:
- Будет просто выводить в консоль ”Hello, world!”.
- Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
должен быть следующим - printHi(“Misha”)).
- Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.*/

func greeting() {
 print("Hello, World!")
}
  greeting()

func printHi(name: String) {
    print("Hello, \(name)")
}
 printHi(name: "Misha")

func greet(name: String) -> String {
    "Hello! \(name)"
}
greet(name: "Margo")

/*2. Написать функцию, которая принимает две строки и возвращает сумму количества
символов двух строк.*/

func sumOfCharactersOfTowStrings(stringOne: String, stringTwo: String) ->  Int {
    stringOne.count + stringTwo.count
}
sumOfCharactersOfTowStrings(stringOne: "Good", stringTwo: "Morning!")

/*3. Написать функцию, которая выводит в консоль квадрат переданного числа.*/

  func square(num: Int) {
      num * num
}
    square(num: 7)

/*4. Создать функцию, которая принимает параметры и вычисляет площадь круга.*/

func circleArea(radius: Int)  {
    let pi = 3.14
    pi * Double(radius * radius)
}
circleArea(radius: 8)

/*5. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
строку с описанием времени суток. Можно делать с логическим типом, можно делать со временем.*/

func descriptionOfTime(isNight: Bool) -> String {
    if isNight == true {
        return "It's Night today"
    }else if  isNight == false {
        return "It's Day today"
    } else {
        return "Error"
    }
}
    descriptionOfTime(isNight: true)

/*6. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
осень).*/

func seasonsOfYear(month: Int) -> String {
    switch month {
    case 12, 1, 2:
        return "It's winter"
    case 3, 4, 5:
        return "It's spring"
    case 6, 7, 8:
        return "It's summer now"
    case 9, 10, 11:
        return "It's summer now"
    default:
        return "I don't know this season"
    }
}
      seasonsOfYear(month: 3)

/*7. Разбить номер телефона на составляющие. Код страны, код оператора, сам номер.
Используем функции строки: prefix, suffix.*/

     let fullNumber = "+375445709081"
     let numberWithoutCodeOfCountry = "445709081"
   let countryCode = String(fullNumber.prefix(4))
let operatorCode = String(numberWithoutCodeOfCountry.prefix(2))
    let number = String(fullNumber.suffix(7))
    
    print(countryCode, operatorCode, number)

/*8*. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
true, если оно простое, и false, если сложное. Рекомендую попробовать решать рекурсией, чтобы разобраться как она работает.*/

func rangeOfNumbers(number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    
    for i in 2...(Int(sqrt(Double(number)))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}
   rangeOfNumbers(number: 17)

/*9*. Создать функцию, которая считает факториал введённого числа.*/

 
    

/*10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8*/

    
    


/*11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
переданного в параметры функции (Int).*/

