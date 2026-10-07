import Foundation
import Playgrounds

#Playground {

// =====================================================================
// Lab1_4 — Завдання №4: Робота з optionals (лише Swift)
// =====================================================================

// 1. Сутність, що містить або не містить ціле число, без значення
//    за замовчуванням — Optional Int.
var integerNumber: Int?
print("1. integerNumber (до присвоєння) =", integerNumber as Any)

// 2. Те саме для числа з плаваючою крапкою.
var decimalNumber: Double?
print("2. decimalNumber (до присвоєння) =", decimalNumber as Any)

// 3. Присвоїти значення числу integerNumber.
integerNumber = 42
print("3. integerNumber =", integerNumber as Any)

// 4. Додати до числа те саме значення, використовуючи
//    increment/decrement оператор.
//    У сучасному Swift оператори ++ / -- прибрані (з версії Swift 3),
//    їхній прямий еквівалент для "додати значення до самого себе" —
//    складений оператор +=.
integerNumber! += integerNumber!
print("4. integerNumber після += самого себе =", integerNumber as Any)

// 5. Змінити знак числа на протилежний, використовуючи unary minus.
integerNumber = -integerNumber!
print("5. integerNumber зі зміненим знаком =", integerNumber as Any)

// 6. Присвоїти decimalNumber значення integerNumber.
decimalNumber = Double(integerNumber!)
print("6. decimalNumber =", decimalNumber as Any)

// 7. Сутність pairOfValues, що містить (або не містить) integerNumber
//    та decimalNumber одночасно — кортеж з двох optional-значень.
let pairOfValues: (Int?, Double?) = (integerNumber, decimalNumber)
print("7. pairOfValues =", pairOfValues)

// 8. Перевірити, чи pairOfValues містить цілочислове значення,
//    і вивести його, якщо існує.
if let intVal = pairOfValues.0 {
    print("8. pairOfValues містить ціле число:", intVal)
} else {
    print("8. pairOfValues не містить цілого числа")
}

// 9. Перевірити, чи pairOfValues містить значення з плаваючою крапкою,
//    і вивести його, якщо існує.
if let dblVal = pairOfValues.1 {
    print("9. pairOfValues містить дробове число:", dblVal)
} else {
    print("9. pairOfValues не містить дробового числа")
}

// 10. Вивести значення decimalNumber, використовуючи optional binding.
if let d = decimalNumber {
    print("10. decimalNumber (через optional binding) =", d)
} else {
    print("10. decimalNumber не має значення")
}

}
