//Functions

/*
 Syntax:
 
 func functionName(parameters) -> ReturnType
 //statements
 
 return parameter
 
 */

func avengers()         //does not require return type as it does not return anything
{
   print("hello avengers")
}

avengers()  //executing a function

//function with parameters

func avengers(year:Int)
{
    print("avengers was reeleased in \(year)")
}
avengers(year: 1999)

func Avenger(x:String, y:String)
{
    print(x + " " + y)
}

Avenger(x: "Avenger", y: "Age of Ultron")

func AvengerMovie() -> (String, String)
{
    let movieName = "Avenger"
    let series = "infinity war"
    
    return(movieName, series)
}

var val = AvengerMovie()        //this is a great usecase where tuples are important
print(val)
print(val.0)


//variable storing a function
func add(a:Int, b:Int) -> Int
{
    return a+b
}

var addition: (Int, Int) -> Int = add       //variable stores a function with specific datatypes, clear and precise definition
print("10 + 20 = \(addition(10,20))")
