//control statements

let marvel = [
    "Ironman",
    "Captain America",
    "Thor",
    "Hulk",
    "Black Panther"
]

for hero in marvel
{
    print(hero)
}
        
for index in 1..<5  //as index is never used you may replace it with '_', this saves memmory
{
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power
{
    answer *= base
}
print("\(base) power \(power) is \(answer)")


//while loop

 var i = 1, n=6

while(i<=n){
    print(i)
    i = i+1
}

//conditionals
//if statements

var age:Int = 80
var age2:Int = 40

if age > 70
{
    print("hero is getting old")
}

//ternary operator
let young =  (age > age2) ? ("hero is getting old"):("hero is still young")
print(young)

//if else statement

var DcMovie = ["suicide squad","Justice league"]

for movie in DcMovie
{
    if (movie=="suicide squad")
    {
        print("DC production")
    }
    else
    {
        print("not a dc production")
    }
}

var avenger = ["ironman","captain america"]
for hero in avenger
{
    if (hero == "captain america")
    {
        print("top avenger")
    }
    else if(hero == "ironman")
    {
        print("stylish avenger")
    }
    else{
        print("not an avenger")
    }
}

//switch and case
let year = 2019
var movie: String

switch year{
    case 2018:
        movie = "aquaman"
        break
    case 2019 :
        movie = "Shazam"
    fallthrough         //case after this will be executed no matter if they match the case or not
    case 2020 :
        movie = "Birds of prey"
    default :
        movie = "NULL"
}

// Control transfer

var num = 3

while num < 40 {
    num += 4
    if num == 27 {
        continue        //skips to the next value and does not execute the below code
    }
    if num == 35 {
        break        //further execution is stopped and exits the loop
    }
    print("\(num)")
}

