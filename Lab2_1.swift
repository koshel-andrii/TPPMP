import Playgrounds

#Playground {
    
    print("========== ЗАВДАННЯ №1: Масиви ==========")

    // 1. Масив fibArray з десяти перших чисел Фібоначчі.
    let fibArray = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    print("1. fibArray =", fibArray)

    // 2. Масив revArray — елементи fibArray в оберненому порядку.
    let revArray = Array(fibArray.reversed())
    print("2. revArray =", revArray)

    // 3. Масив простих чисел snglArray, які не перевищують число 100.
    let snglArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29,
                     31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
                     73, 79, 83, 89, 97]
    print("3. snglArray =", snglArray)

    // 4. Кількість елементів масиву snglArray.
    print("4. кількість елементів snglArray =", snglArray.count)

    // 5. 10-й елемент масиву snglArray (індекс 9, бо рахунок з 0).
    print("5. 10-й елемент snglArray =", snglArray[9])

    // 6. Підмасив елементів snglArray з 15-го по 20-й (індекси 14...19).
    print("6. підмасив [15...20] =", snglArray[14...19])

    // 7. Масив rptArray з 10 елементів, що дорівнюють 10-му елементу snglArray.
    let rptArray = Array(repeating: snglArray[9], count: 10)
    print("7. rptArray =", rptArray)

    // 8. Масив непарних чисел oddArray (0...10) через init(arrayLiteral:).
    var oddArray = Array(arrayLiteral: 1, 3, 5, 7, 9)
    print("8. oddArray =", oddArray)

    // 9. Додати до oddArray число 11.
    oddArray.append(11)
    print("9. oddArray після append(11) =", oddArray)

    // 10. Додати до oddArray числа 15, 17, 19 як підмасив.
    oddArray.append(contentsOf: [15, 17, 19])
    print("10. oddArray після append(contentsOf:) =", oddArray)

    // 11. Вставити число 13 між числами 11 та 15.
    if let idx15 = oddArray.firstIndex(of: 15) {
        oddArray.insert(13, at: idx15)
    }
    print("11. oddArray після insert(13, ...) =", oddArray)

    // 12. Видалити елементи з 5-го по 8-й (невключно), тобто індекси 4..<7.
    oddArray.removeSubrange(4..<7)
    print("12. oddArray після removeSubrange(4..<7) =", oddArray)

    // 13. Видалити останній елемент і вивести його на екран.
    let lastRemoved = oddArray.removeLast()
    print("13. видалений останній елемент =", lastRemoved, "| oddArray =", oddArray)

    // 14. Замінити елементи з 2-го по останній на масив [2, 3, 4].
    oddArray.replaceSubrange(1..<oddArray.count, with: [2, 3, 4])
    print("14. oddArray після replaceSubrange =", oddArray)

    // 15. Видалити елемент, який дорівнює числу 3.
    if let idxOf3 = oddArray.firstIndex(of: 3) {
        oddArray.remove(at: idxOf3)
    }
    print("15. oddArray після видалення 3 =", oddArray)

    // 16. Чи міститься число 3 у масиві oddArray.
    print("16. oddArray.contains(3) =", oddArray.contains(3))

    // 17. Рядкове представлення масиву oddArray.
    print("17. String(describing: oddArray) =", String(describing: oddArray))

}
