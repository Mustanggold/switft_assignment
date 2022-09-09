// Problem 1
struct Date {
    var year : Int;
    var month : Int;
    var day : Int;

    static func dateConverter(num : Int) -> Date{
        var days = num
        let year = days / 365
        days = days % 365
        let month = days / 30
        days = days % 30
        return Date(year : year, month : month, day : days)
    }
}

let result = Date.dateConverter(num : 311);
print("\(result.year) year(s) \(result.month) month(s) \(result.day) day(s)")



enum  WeekDay : String {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday 

    static func dayOfWeek(date : Date) -> WeekDay {
        let totalDays = date.day + date.month * 30 + date.year * 365;
        switch totalDays % 7 {
            case 1:
                return WeekDay.monday;
            case 2:
                return WeekDay.tuesday;
            case 3:
                return WeekDay.wednesday;
            case 4:
                return WeekDay.thursday;
            case 5:
                return WeekDay.friday;
            case 6:
                return WeekDay.saturday;
            default:
                return WeekDay.sunday;
        }
    }
}
print(WeekDay.dayOfWeek(date : Date(year:1, month: 10, day:12)))
