import UIKit

var greeting = "Hello, playground"

/*Вам предстоит разработать систему для обработки данных о студентах. Система должна уметь:
 
 1.  Хранить информацию о студентах: Для каждого студента необходимо хранить следующую информацию:
 *   Имя (String)
 *   Возраст (Int)
 *   Оценки по предметам (Dictionary, где ключ - название предмета (String), значение - оценка (Int))
 *   Набор (Set) посещенных факультативов (String)
 
 Используйте кортеж для представления данных об одном студенте: (name: String, age: Int, grades: [String: Int], optionalSubjects: Set<String>)*/

typealias Student = (name: String, age: Int, grades: [String: Double],
                     optionalSubjects: Set<String>)

/*2.  Создать массив студентов: Создайте массив, содержащий данные о нескольких студентах (минимум 5).*/

let students: [ Student ] =  [
    (name: "Alina", age: 22, grades: ["Math": 10.0, "History":10.0],
     optionalSubjects: ["Art", "Dance", "Italiano"]),
    (name: "Katya", age: 20, grades: ["Math": 9.0,"History": 8.0],optionalSubjects: ["Art", "Dance"]),
    (name: "Sergey", age: 21, grades: ["Math": 7.0, "History": 8.0, "Biology": 5.0], optionalSubjects: ["English", "German"]),
    (name: "Sasha", age: 23, grades: [:], optionalSubjects: ["Sport"]),
    (name: "Maria", age: 19, grades: ["Math": 6.0, "History": 6.0], optionalSubjects: ["Dance", "Chess"])
]

/*3.  Реализовать функции для обработки данных:
 *   calculateAverageGrade(student: Student) -> Double?: Функция должна принимать кортеж студента и возвращать его средний балл по всем предметам. Если у студента нет оценок, функция должна вернуть nil.
 
 *   findStudentsByAge(students: [Student], age: Int) -> [Student]: Функция должна принимать массив студентов и возраст, и возвращать новый массив, содержащий только студентов указанного возраста. Используйте функцию высшего порядка filter.
 
 *   getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)]: Функция должна принимать массив студентов и количество "top", и возвращать массив кортежей (name: String, averageGrade: Double), содержащий информацию о "top" лучших студентах по среднему баллу.  Используйте функции высшего порядка map, filter, sorted и prefix. Если для каких-то студентов не удалось вычислить средний балл (отсутствуют оценки) - их учитывать не нужно.
 
 *   getUniqueOptionalSubjects(students: [Student]) -> Set<String>:  Функция должна принимать массив студентов и возвращать множество, содержащее все уникальные названия факультативов, которые посещают студенты из массива. Используйте функцию высшего порядка reduce или flatMap.*/

func calculateAverageGrade(student: Student) -> Double? {
    guard !student.grades.isEmpty else {
        return  nil
    }
    let total = student.grades.values.reduce(0, +)
    return total / Double(student.grades.count)
    
}
calculateAverageGrade(student: (name: "Sasha", age: 23, grades: [:], optionalSubjects: ["Sport"]))


func findStudentsByAge(students: [Student], age: Int) -> [Student] {
    return students.filter { $0.age == age }
}


func getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)] {
    return students.compactMap { student in
        guard let average = calculateAverageGrade(student: student) else {
            return nil
        }
        return (name: student.name, averageGrade: average)
    }
    .sorted(by: { $0.averageGrade > $1.averageGrade })
    .prefix(top)
    .map { $0 }
}

func getUniqueOptionalSubjects(students: [Student]) -> Set<String> {
    return students.flatMap { Array($0.optionalSubjects) }
        .reduce(into: Set<String>()) { $0.insert($1) }
}
/*4.  Вывести результаты: Выведите на консоль:
 
 *   Информацию о всех студентах (имя, возраст, средний балл, посещаемые факультативы).
 *   Список студентов определенного возраста (например, 20 лет).
 *   Список топ-3 лучших студентов по среднему баллу.
 *   Список всех уникальных факультативов, посещаемых студентами.
 
 Бонус:
 •  Реализуйте функцию, которая будет находить студента с самым большим количеством посещаемых факультативов.*/

for student in students {
    let averageGrade = calculateAverageGrade(student: student) ?? 0.0
    print("Студент: \(student.name), Возраст: \(student.age), Средний балл: \(averageGrade), Факультативы: \(student.optionalSubjects)")
}

let ageToFind = 20
let studentsByAge = findStudentsByAge(students: students, age: ageToFind)
print("Студенты возраста \(ageToFind):")
for student in studentsByAge {
    print(student.name)
}
let topStudent = getTopStudents(students: students, top: 3)
print("Top-3 лучших студента:")
for student in topStudent {
    print("\(student.name) - средний балл: \(student.averageGrade)")
}
let uniqueSubjects = getUniqueOptionalSubjects(students: students)
print( "Уникальные факультативы: \(uniqueSubjects)")
for subject in uniqueSubjects {
    print(subject)
}


