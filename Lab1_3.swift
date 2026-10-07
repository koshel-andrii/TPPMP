import Foundation
import Playgrounds

#Playground {

// =====================================================================
// Lab1_3 — Завдання №3: Робота з рядками
// =====================================================================

var text = "Hello World. This is Swift programming language"
print("Початковий рядок:", text)

// 1. Довжина рядка.
print("1. довжина рядка =", text.count)

// 2. Замінити кожне входження символа "i" на символ "u".
text = text.replacingOccurrences(of: "i", with: "u")
print("2. після заміни i -> u:", text)

// 3. Видалити 4-й, 7-й та 10-й символи.
//    Видаляємо у порядку спадання індексів, щоб не зсувати позиції
//    символів, які ще треба видалити.
for position in [10, 7, 4] {
    let idx = text.index(text.startIndex, offsetBy: position - 1)
    text.remove(at: idx)
}
print("3. після видалення 4,7,10 символів:", text)

// 4. Додати рядок " (modified)" до існуючого рядка.
text += " (modified)"
print("4. після додавання ' (modified)':", text)

// 5. Чи існуючий рядок є пустим.
print("5. text.isEmpty =", text.isEmpty)

// 6. Додати символ "." до кінця рядка.
text.append(".")
print("6. після append('.'):", text)

// 7. Чи рядок починається з підрядка "Hello".
print("7. text.hasPrefix(\"Hello\") =", text.hasPrefix("Hello"))

// 8. Чи рядок закінчується підрядком "world.".
print("8. text.hasSuffix(\"world.\") =", text.hasSuffix("world."))

// 9. Вставити символ "-" після 10-го символа.
let insertIdx = text.index(text.startIndex, offsetBy: 10)
text.insert("-", at: insertIdx)
print("9. після вставки '-' після 10-го символа:", text)

// 10. Замінити послідовність "Thus us" на "It is".
//     (У початковому рядку такої підпослідовності немає — судячи з
//     контексту, це, найімовірніше, описка в методичці і малось на
//     увазі "This is". Код виконує заміну рівно так, як написано
//     у завданні; якщо підрядка немає, рядок лишиться без змін.)
text = text.replacingOccurrences(of: "Thus us", with: "It is")
print("10. після спроби заміни 'Thus us' -> 'It is':", text)

// 11. Вивести 10-й та 15-й символи рядка.
let idx10 = text.index(text.startIndex, offsetBy: 9)
let idx15 = text.index(text.startIndex, offsetBy: 14)
print("11. 10-й символ =", text[idx10], "| 15-й символ =", text[idx15])

// 12. Вивести підрядок у межах 10-го (включно) та 15-го (невключно) символів.
let subStart = text.index(text.startIndex, offsetBy: 9)
let subEnd = text.index(text.startIndex, offsetBy: 14)
print("12. підрядок [10..<15) =", text[subStart..<subEnd])

}
