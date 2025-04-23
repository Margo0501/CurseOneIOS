import UIKit
var greeting = "Hello, playground"



/*1. Конвертер валют с обработкой ошибок:
 
 •     Создайте enum Currency с кейсами для USD, EUR, BYN. Каждому кейсу присвойте rawValue типа String с соответствующим кодом валюты.
 •     Создайте функцию getExchangeRate(from: Currency, to: Currency) -> Double?, которая принимает две валюты и возвращает курс обмена между ними. Если для какой-то пары валют курс не найден, функция должна возвращать nil.
 •   Создайте функцию convertCurrency(amount: Double, from: Currency, to: Currency) -> Double?, которая принимает сумму, исходную валюту и целевую валюту и возвращает сконвертированную сумму. Используйте функцию getExchangeRate для получения курса обмена. Если курс обмена не найден, функция должна возвращать nil.*/

enum Currency: String {
    case USD = "USD"
    case EUR = "EUR"
    case BYN = "BYN"
}
func getExchangeRate(from: Currency, to: Currency) -> Double?{
    var usdRateToEur = 0.92
    var usdRateToByn = 3.23
    var eurRateToUsd = 1.08
    var eurRateToByn = 3.49
    var bynRateToUsd = 0.31
    var _: Double? = nil
    if from == .USD && to == .EUR {
        return usdRateToEur
    }else if from == .USD && to == .BYN {
        return usdRateToByn
    }else if from == .EUR && to == .USD {
        return eurRateToUsd
    }else if from == .EUR && to == .BYN {
        return eurRateToByn
    }else if from == .BYN && to == .USD {
        return bynRateToUsd
    }else {
        return nil
    }
}

getExchangeRate(from: Currency .USD, to: Currency .BYN)
getExchangeRate(from: Currency .BYN, to: Currency .EUR)

func convertCurrency(amount: Double, from: Currency, to: Currency) -> Double? {
    guard amount >= 0 else {
        return nil
    }
    if let exchangeRate = getExchangeRate(from: Currency .EUR, to: Currency .USD) {
        return amount * exchangeRate
    } else {
        return nil
    }
    
}
convertCurrency(amount: 20, from: Currency .EUR, to: Currency .USD)

/*2. Анализатор результатов экзамена:
 
 •   Создайте enum Grade с кейсами A, B, C, D, F.  Каждому кейсу присвойте rawValue типа Int, представляющий числовой балл (например, A = 90, B = 80 и т.д.).
 •   Создайте функцию getLetterGrade(score: Int) -> Grade?, которая принимает числовой балл (Int) и возвращает соответствующую буквенную оценку (Grade).  Если балл находится вне допустимого диапазона (например, меньше 0 или больше 100), функция должна возвращать nil.  Реализуйте логику определения оценки на основе диапазонов баллов (например, 90-100 -> A, 80-89 -> B и т.д.).
 •   Создайте функцию printExamResult(name: String, score: Int) -> String, которая принимает имя студента (String) и его балл (Int) и возвращает строку с результатом экзамена. Используйте функцию getLetterGrade для получения буквенной оценки.
 
 •   Если функция getLetterGrade возвращает оценку, строка должна иметь формат: "[Имя студента] получил [Буквенная оценка] (Балл: [Числовой балл])".
 •   Если функция getLetterGrade возвращает nil, строка должна иметь формат: "[Имя студента] получил недопустимый балл: [Числовой балл]".
 
 •   Продемонстрируйте работу функции printExamResult с разными входными данными, включая допустимые и недопустимые баллы.*/

enum Grade: Int {
    case A = 90
    case B = 80
    case C = 70
    case D = 60
    case F = 50
}

func getLetterGrade(score: Int) -> Grade? {
    if score < 0 || score > 100 {
        return nil
    }
    
    switch score {
    case 90...100:
        return .A
    case 80..<90:
        return .B
    case 70..<80:
        return .C
    case 60..<70:
        return .D
    default:
        return .F
        
    }
}
getLetterGrade(score: 75)


func printExamResult(name: String, score: Int) -> String {
    guard let grade = getLetterGrade(score: score) else {
        return "\(name), false score: \(score)"
    }
    
    return "\(name), your score: \(score), your mark: \(grade.rawValue)"
    
}
printExamResult(name: "Margo", score: 98)
printExamResult(name: "Margo", score: 150)
printExamResult(name: "Margo", score: 1)
