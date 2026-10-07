import Playgrounds

#Playground {
    
    print("\n========== ЗАВДАННЯ №3: Словники ==========")

    // 1. Словник nDict: ключі "1"..."5", значення — англійські назви чисел.
    let nDict: [String: String] = [
        "1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"
    ]
    print("1. nDict =", nDict)

    // 2. Значення nDict за ключем "3".
    print("2. nDict[\"3\"] =", nDict["3"] ?? "немає значення")

    // 3. Значення nDict за індексом ключа "4".
    if let idx4 = nDict.index(forKey: "4") {
        print("3. значення за індексом ключа \"4\" =", nDict[idx4].value)
    }

    // 4. Mutable словник mNDict на основі nDict.
    var mNDict = nDict
    print("4. mNDict =", mNDict)

    // 5. Додати елементи "6":"Seven" та "7":"Six" (навмисно "переплутані",
    //    щоб у п.6 виправити їх через updateValue).
    mNDict["6"] = "Seven"
    mNDict["7"] = "Six"
    print("5. mNDict після додавання 6 і 7 =", mNDict)

    // 6. Оновити значення без subscript [] до правильних:
    //    6:Six, 7:Seven, 8:Eight (додається новим).
    mNDict.updateValue("Six", forKey: "6")
    mNDict.updateValue("Seven", forKey: "7")
    mNDict.updateValue("Eight", forKey: "8")
    print("6. mNDict після updateValue =", mNDict)

    // 7. Видалити елемент за ключем "5".
    mNDict.removeValue(forKey: "5")
    print("7. mNDict після видалення ключа \"5\" =", mNDict)

    // 8. Видалити елемент за індексом ключа "4".
    if let idxKey4 = mNDict.index(forKey: "4") {
        mNDict.remove(at: idxKey4)
    }
    print("8. mNDict після видалення за індексом ключа \"4\" =", mNDict)

    // 9. Відстань у mNDict між парами "1":"One" та "7":"Seven".
    if let i1 = mNDict.index(forKey: "1"), let i7 = mNDict.index(forKey: "7") {
        let dist = mNDict.distance(from: i1, to: i7)
        print("9. відстань між \"1\" та \"7\" =", dist)
    }

    // 10. Масив mNDictKeys — усі ключі словника mNDict.
    let mNDictKeys = Array(mNDict.keys)
    print("10. mNDictKeys =", mNDictKeys)

    // 11. Масив усіх значень словника mNDict.
    //     (у завданні тут повторно написано "mNDictKeys" — це, очевидно,
    //     описка в методичці; називаю змінну mNDictValues, щоб не було
    //     конфлікту імен з п.10.)
    let mNDictValues = Array(mNDict.values)
    print("11. mNDictValues =", mNDictValues)

    // 12. Кількість елементів словника mNDict, а також кількість ключів і значень.
    print("12. mNDict.count =", mNDict.count,
          "| keys.count =", mNDict.keys.count,
          "| values.count =", mNDict.values.count)

    // 13. Рядкове представлення словника mNDict.
    print("13. String(describing: mNDict) =", String(describing: mNDict))

}
