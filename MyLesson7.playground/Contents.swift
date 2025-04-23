import UIKit

var greeting = "Hello, playground"

/*1. Разработка иерархии классов для геометрических фигур:
 
 •  Создайте базовый класс Shape с общими свойствами (например, цвет) и методом calculateArea().
 •  Создайте подклассы Circle, Rectangle, Triangle, наследующиеся от Shape.
 •  Переопределите метод calculateArea() в каждом подклассе для вычисления площади соответствующей фигуры.
 •  Добавьте свойства, специфичные для каждой фигуры (например, радиус для круга, длина и ширина для прямоугольника).
 •  Создайте массив объектов типа Shape и выведите площадь каждой фигуры.*/
class Shape {
    var color: String
    init(color: String) {
        self.color = color
    }
    func calculateArea() -> Double {
        return 0.0
        
    }
}
class Circle: Shape {
    var radius: Double
    init(color: String, radius: Double) {
        self.radius = radius
        super.init(color: color)
    }
    
    override func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}
class Rectangle: Shape {
    var length: Double
    var width: Double
    init(color: String, length: Double, width: Double){
        self.length = length
        self.width = width
        super.init(color: color)
    }
    override func calculateArea() -> Double {
        return length * width
    }
}
class Triangle: Shape {
    var base: Double
    var height: Double
    init(color: String, base: Double, height: Double) {
        self.base = base
        self.height = height
        super.init(color: color)
    }
    override func calculateArea() -> Double {
        return 0.5 * base * height
    }
}
let arrayOfShapes: [Shape] = [
    Circle(color: "Blue", radius: 7.0),
    Rectangle(color: "Green", length: 5.0, width: 4.0),
    Triangle(color: "Black", base: 8.0, height: 9.0)
]
for shape in arrayOfShapes {
    print("Color: \(shape.color), Area: \(shape.calculateArea())")
}
/*2. Создание структуры для представления контакта в телефонной книге:
 
 •  Создайте структуру Contact со свойствами:
 *  firstName (String)
 *  lastName (String)
 *  phoneNumber (String)
 *  email (String?) (опциональный email).
 •  Создайте функцию, которая принимает массив структур Contact и строку для поиска. Функция должна возвращать новый массив Contact, содержащий только те контакты, у которых имя или фамилия содержат строку для поиска (без учета регистра).*/

struct Contact {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String?
}

func searchContacts(contacts: [Contact], searchingString: String) -> [Contact] {
    return contacts.filter {
        contact in contact.firstName.lowercased().contains(searchingString.lowercased()) ||
        contact.lastName.lowercased().contains(searchingString.lowercased())
    }
}
let contacts = [
    Contact(firstName: "Marina", lastName: "Herovec", phoneNumber: "+375446808976", email: nil),
    Contact(firstName: "Max", lastName: "Gapeev", phoneNumber: "+375294356345", email: "maxgapeev@gmail.com"),
    Contact(firstName: "Artem", lastName: "Krapivko", phoneNumber: "+375256678901", email: "artemkrapivko@gmail.com") ]
let serchingString = "art"
let filteredContacts = searchContacts(contacts: contacts, searchingString: serchingString)
for contact in filteredContacts {
    print("\(contact.firstName), \(contact.lastName), \(contact.phoneNumber), \(contact.email ?? "there is no email")")
}
