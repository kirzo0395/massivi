let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let month = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
print("\nДни\n")
for days in daysInMonths {
    print(days)
}
print("\nДни и Месяцы\n")
for i in 0..<month.count {
    print("\(month[i]): \(daysInMonths[i])")
}

print("\nТюплы\n")

let monthData = zip(month, daysInMonths)

for (month, days) in monthData {
    print("\(month): \(days)")
}
print("\nДни в обратном порядке\n")
for days in daysInMonths.reversed() {
    print(days)
}


let targetMonth = 7 // Номер месяца (например, июль)
let targetDay = 15 // День


// Дата для расчета
let selectedDate = (month: "Апрель", day: 15)

// Подсчет количества дней до выбранной даты от начала года
var totalDays = 0
for (index, month) in month.enumerated() {
    if month == selectedDate.month {
        totalDays += selectedDate.day
        break
    } else {
        totalDays += daysInMonths[index]
    }
}

print("\nДней до \(selectedDate.month) \(selectedDate.day): \(totalDays)")
