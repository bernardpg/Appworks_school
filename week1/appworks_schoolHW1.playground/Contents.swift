import Foundation


/*
 basic
 */
//Q1
let Pi:Double = 3.14
print(Pi)
//Q2
var x:Int  = 65
var y:Int = 65
var average = (x+y)/2
print(average)

//Q3(unfinished)
// type change
var input:Int = 65
var Input:Float = Float(input)
print(Input)
//input = Float(input)

//explain:  (10/3) -> 會生成一個整數（商） (10.0)/(3.0)-> 會生成一個浮點數（由於有可能會有除不盡，因此所以都改為浮點數最好）

//Q4
var flag :Bool = true
var inputString :String = "Hello World"
let bitInBite:Int = 8
let averageScore:Double = 86.8

//Q5
var salary:Int = 22000
salary+=28000
print(salary)

//Q6
// Equality operator is ==
print(1==1)
//Q7
let z:Int = 10
let v:Int = 3
var remainder:Int = 0
remainder = z%v
print(remainder)

//Q8
//let 像是Ｃ語言的constant 一樣，一旦被宣告了，就無法改變
//var 則是一個可更改的變數
//Q9
//I learn  camelCase Type in this session
//Q10
// 當定義變數時，不需要像Ｃ一樣定義每個變數為何種變數，可以像是python 一樣，輸入一變數即可抓取後面的指定變數型態當成變數的種類
//Q11
var phoneNumber = 0987654321;
//phoneNumber = "Hello world"
//print(phoneNumber)
// 因為最初變數型態為整數，但是後來我們定義其變數型態為字串，因此程式會報錯
/*
 Collection
 */

//Q1
var myFriends=[String]()
print(myFriends)

//Q2
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")
print(myFriends)

//Q3
myFriends.append("Machael")
print(myFriends)

// Q4
myFriends.remove(at:3)
myFriends.insert("Kevin", at: 0)
print(myFriends)


//Q5
for inde in myFriends {
    print(inde)
}

//Q6
//print(myFriends[5])
// 此處超越array index 會導致呼叫時 out of range 找不到那些memory array 的值
//Q7
print(myFriends.first)
//kinda warning
//Q8
print(myFriends.last)

// Q9
var myCountryNumber = [String:Int]()

//Q10
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
print(myCountryNumber)

//Q11
myCountryNumber["GB"] = 0
print(myCountryNumber)
//Q12
var myCountry = [String:Int]()
//declare empty dictionary
//Q13
myCountryNumber["GB"] = nil
print(myCountryNumber)

/*
 Control Flow
 */
//Q1
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for i in stride(from: 5, to: 2, by: -1)
{
    print(lottoNumbers[i])
}

//Q2
for i in stride(from: 5, to: -1, by: -1)
{
    print(lottoNumbers[i])
}

for i in 0...5 where i % 2 == 0
{
    print(lottoNumbers[i])
}

//Q3
var i:Int = 0
var length:Int = lottoNumbers.count
while(i<length)
{
    i+=1
    print(lottoNumbers[length-i])
}
var I:Int = 0
while(I<length && I%2==0)
{
    
    print(lottoNumbers[I])
    I+=2
}
//Q4
var tem:Int = 0
repeat
{
    tem+=1
    print(lottoNumbers[length-tem])
}while(tem<length)
var Tem:Int = 0
repeat
{
    
    print(lottoNumbers[Tem])
    Tem+=2
}while(Tem<length && Tem%2==0)

//Q5
// repeat-while 類似於其他語言的do-while 先執行區塊內的指令再進行判別條件
// while-loop 則是一般while-loop判別條件完再進行區塊內指令
//Q6
var isRaining : Bool = true

if isRaining
{
    print("It’s raining, I don’t want to work today.")
}
else
{
    print("Although it’s sunny, I still don’t want to work today.")
}


/*
 Function
 */


//Q1
func greet(person:String) ->String
{
    return("Hello \(person)")
}
greet(person: "Luke")
//Q2
func multiply(a:Int,b:Int = 10)
{
    print(a*b)
}
multiply(a:10)
//Q3
func rate(Trueless earphone:String)
{
    print("\(earphone)")
}
rate(Trueless:"Airpod")
//Ｔrueless（argument label） 是指當輸入函數時，提醒使用函數時應輸入哪種參數，又稱為外部參數名
//earphone (parameter name ) 是指當此函數在運行時的內部名稱（在）function內利用此變數時，所使用的變數名
//Q4
// function birthday return string
// function payment return double
