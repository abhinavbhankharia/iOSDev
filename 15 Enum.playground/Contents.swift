// Enums

enum Marvel {
    case Ironman
    case CaptainAmerica
    case Thor
    case Spiderman
    case BlackPanther
}

var hero = Marvel.BlackPanther

if hero == .BlackPanther {              //common way of using a enum is directly using the dot(.) and enum value, skipping the name Marvel
    print("Wakanda's King")
}

switch hero{
case .BlackPanther:
    print("Wakandas King")
case .Ironman:
    print("Stylish avenger")
case .CaptainAmerica:
    print("first avenger")
    case .Thor:
    print("king of asgaurd")
case .Spiderman:
    print("friendly spiderman")        //we need not define default case as all the exhuastive list of the case are being covered in enum
}

enum marvelMovies{
    case Name(String)
    case Year(Int)
}

var mName = marvelMovies.Name("DrStrange")
var mYear = marvelMovies.Year(2016)

switch mName{
case .Name(let movieName):
    print("movie name \(movieName)")
case .Year(let movieYear):
    print("movie name \(movieYear)")
}


//recursion enums

indirect enum ArithmeticExpression {
    case num(Int)
    case add(ArithmeticExpression,ArithmeticExpression)     //calling the enum itself here, this might end up in an infinite loop
                                                            //to fix this recursion we use indirect keyword while declaring enum
}

func evalute(_ expression: ArithmeticExpression ) -> Int {      //we use switch here so that any value you pass into this function goes through enumeration and does not cause any memory leak or data structure leak
    switch expression{
    case .num(let value):
        return value
    case .add(let first, let last):
        return evalute(first) + evalute(last)
    }
}

let a = ArithmeticExpression.num(10)        //"a" does not hold integer value, instead it hold "num" type value
let b = ArithmeticExpression.num(22)

let sum = ArithmeticExpression.add(a, b)        //this will not accept interger values
print(evalute(sum))

print(evalute(ArithmeticExpression.add(ArithmeticExpression.num(12), ArithmeticExpression.num(13))))
