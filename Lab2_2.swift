import Playgrounds

#Playground {

    print("\n========== ЗАВДАННЯ №2: Множини ==========")

    // 1. Множина chSet із символів a, b, c, d.
    let chSet: Set<Character> = ["a", "b", "c", "d"]
    print("1. chSet =", chSet)

    // 2. Mutable множина mChSet на основі chSet.
    var mChSet = chSet
    print("2. mChSet =", mChSet)

    // 3. Кількість елементів множини mChSet.
    print("3. mChSet.count =", mChSet.count)

    // 4. Вставити символ 'e' в mChSet.
    mChSet.insert("e")
    print("4. mChSet після insert('e') =", mChSet)

    // 5. srtChSet — відсортована версія mChSet.
    //    (Set у Swift неупорядкована колекція, тому "відсортована множина"
    //    повертається як Array — це стандартний спосіб отримати сортований
    //    порядок елементів множини.)
    let srtChSet = mChSet.sorted()
    print("5. srtChSet (sorted) =", srtChSet)

    // 6. Видалити з mChSet символ 'f' та вивести видалений символ.
    //    ('f' немає у множині, тому remove(_:) поверне nil — це очікувано
    //    і демонструє, що remove(_:) повертає Optional.)
    let removedF = mChSet.remove("f")
    print("6. видалений символ 'f' =", removedF as Any)

    // 7. Видалити символ 'd' за індексом та вивести рядкове представлення.
    if let idxD = mChSet.firstIndex(of: "d") {
        mChSet.remove(at: idxD)
    }
    print("7. mChSet після видалення 'd' за індексом =", mChSet)

    // 8. Відстань у mChSet між першим елементом та символом 'a'.
    if let idxA = mChSet.firstIndex(of: "a") {
        let dist = mChSet.distance(from: mChSet.startIndex, to: idxA)
        print("8. відстань від першого елемента до 'a' =", dist)
    } else {
        print("8. 'a' наразі немає в mChSet")
    }

    // 9. Вставити символ 'a' в mChSet.
    mChSet.insert("a")
    print("9. mChSet після insert('a') =", mChSet)

    // 10. Множини aSet (One, Two, Three, 1, 2) та bSet (1, 2, 3, One, Two).
    let aSet: Set<String> = ["One", "Two", "Three", "1", "2"]
    let bSet: Set<String> = ["1", "2", "3", "One", "Two"]
    print("10. aSet =", aSet, "| bSet =", bSet)

    // 11. Множина спільних елементів aSet та bSet.
    let commonSet = aSet.intersection(bSet)
    print("11. intersection(aSet, bSet) =", commonSet)

    // 12. Унікальні елементи aSet відносно bSet, і навпаки.
    let uniqueInA = aSet.subtracting(bSet)
    let uniqueInB = bSet.subtracting(aSet)
    print("12. унікальні в aSet =", uniqueInA, "| унікальні в bSet =", uniqueInB)

    // 13. Елементи, які НЕ є спільними для aSet та bSet (симетрична різниця).
    let notCommon = aSet.symmetricDifference(bSet)
    print("13. symmetricDifference(aSet, bSet) =", notCommon)

    // 14. Об'єднання усіх елементів aSet та bSet.
    let unionSet = aSet.union(bSet)
    print("14. union(aSet, bSet) =", unionSet)

    // 15. Множини xSet(2...4), ySet(1...6), zSet(3,4,2), x1Set(5,6,7).
    let xSet: Set<Int> = Set(2...4)
    let ySet: Set<Int> = Set(1...6)
    let zSet: Set<Int> = [3, 4, 2]
    let x1Set: Set<Int> = [5, 6, 7]
    print("15. xSet =", xSet, "| ySet =", ySet, "| zSet =", zSet, "| x1Set =", x1Set)

    // 16. Чи xSet входить у ySet, і чи ySet входить у xSet.
    print("16. xSet.isSubset(of: ySet) =", xSet.isSubset(of: ySet))
    print("    ySet.isSubset(of: xSet) =", ySet.isSubset(of: xSet))

    // 17. Чи xSet містить ySet, і чи ySet містить xSet.
    print("17. xSet.isSuperset(of: ySet) =", xSet.isSuperset(of: ySet))
    print("    ySet.isSuperset(of: xSet) =", ySet.isSuperset(of: xSet))

    // 18. Чи xSet та zSet є рівними.
    print("18. xSet == zSet =", xSet == zSet)

    // 19. Чи xSet входить у zSet, але не рівна zSet (строге підмноження).
    print("19. xSet.isStrictSubset(of: zSet) =", xSet.isStrictSubset(of: zSet))

    // 20. Чи xSet містить zSet, але не рівна zSet (строга надмножина).
    print("20. xSet.isStrictSuperset(of: zSet) =", xSet.isStrictSuperset(of: zSet))

}
