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
// instance method : 是屬於一個特定型別(class、enum、struct)的實體。
 //instance method  需使用func關鍵字建立，並需要放在這個定義的特定型別 (class、enum、struct)的大括號 { } 內。

// type method ：是定義在特定型別(class、enum、struct)的方法，而非實體。
 //type method 的宣告型別方法需在func前加上關鍵字(static、 class)。
//Q6
//class：Initilizer 是當前class的物件初始化的過程，若宣告的物件沒有初始值或設為optional，則可透過Initilizer達到初始化，可分為預設初始化函式init(){ } 以及 傳遞值作為初始化的init( x: Int, y: Int){ }。

//struct：在struct中可以不必將宣告的物件都賦予初始值，struct會給予一個memberwise initializer 這樣在宣告時就可以只給物件的type即可，且不管物件宣告時是let或是var 都沒關係，因為在呼叫struct時就會做初始化給予初始值。


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

class Pet{
    var name:String?
    
    init(){}
    
    init(name:String) {
        self.name = name
    }
}

class People{
    var pet:Pet?
    
    init(){}
    
    init(pet:Pet) {
        self.pet = pet
    }
    
    func GuardLet(){
        
        guard let havePet = pet?.name else{
            print("GuardLet() is optional")
            return
        }
        print("GuardLet() = \(havePet)")
    }
    
    func IfLet(){
        if let havePet = pet?.name {
            print("IfLet() = \(havePet)")
        }else{
            print("IfLet() is optional")
        }
    }
}

let nulInit = People.init()
nulInit.GuardLet()
nulInit.IfLet()

let valueInit = People(pet: Pet(name: "abc"))
valueInit.GuardLet()
valueInit.IfLet()



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

enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    
    init() {}
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

var te = GuessNumerGame.init()
try te.guess(number: 10)
