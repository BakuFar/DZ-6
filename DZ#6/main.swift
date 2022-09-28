import Foundation

// DZ#1

var name : [String] = []
var producer : [String] = []
var weight : [Int] = []
var code : [Int] = []
var price : [Int] = []
var discount : [Int] = []
var quantity : [Int] = []
var sum : [Int] = []
var summ = 0
var count = 0
var nameNew = ""
while nameNew != "готово" {
    print("Введите название или готово для выхода")
    let nameNew = readLine()!
    if nameNew == "готово" {
        break
    }
    name.append(nameNew)
    print("Производитель")
    let producerNew = readLine()!
    producer.append(producerNew)
    print("Вес")
    let weightNew = Int(readLine()!)
    weight.append(weightNew ?? 0)
    print("Штрих код")
    let codeNew = Int(readLine()!)
    code.append(codeNew ?? 0)
    print("Цена")
    let priceNew = Int(readLine()!)
    price.append(priceNew ?? 0)
    print("Скидка")
    let discountNew = Int(readLine()!)
    discount.append(discountNew ?? 0)
    print("Количество")
    let quantityNew = Int(readLine()!)
    quantity.append(quantityNew ?? 0)
    sum.append(quantity[count]*price[count]-quantity[count]*price[count]*discount[count]/100)
    count += 1
}
for i in 0..<count {
    print("\(code[i]). \(name[i]) / \(producer[i]) / \(weight[i]) кг / цена - \(price[i]) / количество - \(quantity[i]) шт / скидка - \(discount[i]) % / сумма - \(sum[i]) сом")
    summ += sum[i]
}
print("Итого - \(summ) сом")

// DZ#2

var account: [String] = []
var login: [String] = []
var password: [String] = []
var secretWord: [String] = []
var index = -1
let a = 0

while a == 0 {
    print("Введите название или выход")
    let newAccount = readLine()!
    if newAccount == "выход" {
        break
    }
    index += 1
    account.append(newAccount)
    print("Логин")
    let newLogin = readLine()!
    login.append(newLogin)
    print("Пароль")
    var newPassword = readLine()!
    for i in 0..<index {
        while newPassword == password[i] {
            print("Ваш пароль похож на пароль от \(account[i]). Введите другой пароль")
            newPassword = readLine()!
        }
    }
    password.append(newPassword)
    print("Секретное слово")
    let newSecretWord = readLine()!
    secretWord.append(newSecretWord)
}
for i in 0...index {
    print(account[i], login[i], password[i], secretWord[i])
}
