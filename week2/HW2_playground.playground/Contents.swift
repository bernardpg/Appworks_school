import Foundation

/*
 OOPS
 */

class Animal{
    let animal :String
    enum Gender{
        case male
        case female
        case undefined
    }
    init(animal : String) {
        self.animal = animal
    }
    func eat(food : String){
        print("I eat \(food)")
    }
}

let animal = Animal(animal: "apple")
animal.eat(food: "everything")

class Elephant : Animal{
    override func eat(food : String) {
        print("I eat \(food)")
    }
}

class Tiger : Animal{
    override func eat(food : String) {
        print("I eat \(food)")
    }
}
class Horse : Animal{
    override func eat(food : String) {
        print("I eat \(food)")
    }
}


let elephant = Elephant(animal: "apple")
elephant.eat(food: "grass")

let tiger = Tiger(animal: "Airwaves")
tiger.eat(food: "goat")

let horse = Horse(animal: "Farfar")
horse.eat(food: "grass")



class Zoo {
    var weekHot : Animal
    init(weeklyHot : Animal){
        self.weekHot = weeklyHot
    }
}
let zooTiger = Zoo(weeklyHot:Tiger(animal: "my tiger"))
let zooElephant = Zoo(weeklyHot:Elephant(animal: "my elephant"))
let zooHorse = Zoo(weeklyHot:Horse(animal: "my horse"))

zooTiger.weekHot.eat(food : "grass")
zooElephant.weekHot.eat(food : "meat")
zooHorse.weekHot.eat(food : "grass")


//Q4

//
// struct -> Value Type class -> reference Type
// struct ->  int a 直接複製一個 Int 4 bytes 位置給你 (copy data)
// struct -> immutable when declare as constant
// class -> call by reference 指向相同記憶體位置 (share data)
    // like C 語言裡面  int *(ptr) = a
// class properties remain mutable
// struct 由於 call by value 因此沒有繼承概念
// class  由於 call by reference 因此可以指向相同記憶體位置，因此有繼承的概念
// class 需要 init  struc 不用

//Q5

//Q6

//Q7

//Q8
// struct -> Value Type class -> reference Type
// struct ->  int a 直接複製一個 Int 4 bytes 位置給你
// class -> call by reference 指向相同記憶體位置
    // like C 語言裡面  int *(ptr) = a

/*
 Eumerate
 */
//Q1
enum Gasoline : String
{
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice()->Int
    {
        switch self
        {
        case .oil92:
          return 32
        case .oil95:
          return 35
        case .oil98:
          return 40
        }
        
    }
}

var gas = Gasoline.oil92.getPrice()
Gasoline.oil92.rawValue

//associated value -> 定義為實例值
// 其可放入型態，或者類別的物件 相較於 raw value 較為單一（string/ int）
// how it works
enum test
{
    case retest(Int,Int)
    case reee(Double)
}
func robust(tem:test)
{
    switch tem
    {
    case .retest(let nt, let It):
        print (nt+It)
    case .reee(let vt):
        print( vt)
    }
}
robust(tem: test.retest(2, 3))
robust(tem: test.reee(2.21))

var ptr = test.retest(2, 3)
print(ptr)
ptr = .reee(3.12)
print (ptr)

//Q2

class People
{
    let name : String
    init(name : String) {
        self.name = name
    }
    class Pet
    {
        let name : String
        init(name : String) {
            self.name = name
        }
        
    }
}

//let pet = Pet(name: "Kelly")



/*
 protocol
 */

struct Person
{
    let name: String
    let toolMan: ToolMan
}

extension Person: PoliceMan {
    func arrestCriminals() { }
}

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {}
}

let steven = Person(name: "Steven", toolMan: Engineer())
steven.name


/*
 error-handling
 */
/*
enum GuessNumberGameError
{
case wrongNumber
}
class GuessNumerGame
{
    var targetNumber = 10
    func guess(number: Int) throws
    {
        guard number == targetNumber else
        {
            throw GuessNumberGameError.wrongNumber
            
        }
        print("Guess the right number: \(targetNumber)")
        
    }
}
*/
