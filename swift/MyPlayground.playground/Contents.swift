//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var optionString: String? = "Hello"
print(optionString == nil)

var greeting = "Hello"
if let name = optionString{
    greeting = "hello, \(name)"
}


var total = 0
for i in 0..<4{
    total += i
}
print(total)


func greet(person: String, day: String) -> String{
    return "Hello \(person), today is \(day)."
}
greet(person: "Steve", day: "Tuesday")


let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

func sumof(numbers: Int...) -> Int{
    var sum = 0
    for number in numbers{
        sum += number
    }
    
    return sum
}
sumof()
sumof(numbers: 1, 2, 3)


func calStatistic(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0];
    var max = scores[0];
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        }
        else if score < min{
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let res = calStatistic(scores: [2, 4, 6])
print(res.sum)
print(res.2)


func calAverage(numbers: [Int]) ->(average: Double, sum: Int){
    var sum = 0
    var average = 0.0
    for number in numbers{
        sum += number
    }
    average = Double(sum / numbers.count)
    
    return (average, sum)
}
calAverage(numbers: [1, 3, 4])

var d1 = 2
var d2 = 5
Double(d2)/Double(d1)
d2/d1

func returnNest() -> Int{
    var a = 10
    func add5(){
        a += 5
    }
    add5()
    return a
}
returnNest()


func makeIncrementer() ->((Int) -> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    
    return addOne
}
var increment = makeIncrementer()
increment(7)


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Int{
    var number = 0
    for item in list {
        if condition(item){
            number += 1
        }
    }
    return number
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}
var lists = [1, 2, 3, 4]
hasAnyMatches(list: lists, condition: lessThanTen)


func lessThanTen2(lists: [Int]) -> Int{
    var num = 0;
    for item in lists {
        if item < 10 {
            num += 1
        }
    }
    return num
}
lessThanTen2(lists: [1, 20, 10])



var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

let sortNumbers = numbers.sorted{$0 > $1}
print(sortNumbers)


class Shape{
    var number: Int = 0
    var name: String
    
    init(sname: String){
        self.name = sname
    }
    
    func goToShape() -> String{
        return "the shape name is \(name), and number is \(number)"
    }
}
let ss = Shape(sname: "Steve")
ss.goToShape()
ss.name
ss.number


class extendShape: Shape{
    var shapeDobule: Double
    
    init(sd: Double, name: String){
        self.shapeDobule = sd
        super.init(sname: name)
        number = 4
    }
    
    var anotherVal: Double{
        get{
            return 2.0 * shapeDobule
        }
        set{
            shapeDobule = newValue / 2.0
        }
    }
    
    override func goToShape() -> String{
        return "the shape name is \(name), and number is \(number)"
    }
}
let extendsSh = extendShape(sd: 99.00, name: "Max")
extendsSh.goToShape()
extendsSh.shapeDobule
extendsSh.anotherVal
extendsSh.anotherVal = 120
extendsSh.shapeDobule


enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.king
let aceRawValue = ace.rawValue




