//Closure

//syntax
/*
{
    (parameter) -> returnType in
    //statement
}
*/

var dcWorld = {
    print("welcome to dc world")        //simplest example of closure
}

var myClosure: () -> () = { }

var numClosure: (Int) -> (Int) = {
    (myNum: Int) -> (Int) in
    return myNum + 2
}
 
numClosure(2)

var anotherNumClosure = { myNum in
    return myNum+4
}
anotherNumClosure(5)


// a closure with only return type
var founded = { ( ) -> Int in
    return 2022
}


// a closure with only parameter type
var founders = {(name: String) in
    print(name)
}
founders("abhinav")


// a closure with parameter type and return type
var anotherFounder = {(name:String) -> String in
    return name
}

var anotherTwoFounder = {(name:String,name2:String) -> String in
    return name+name2
}

let movieName = ["SuicideSquad" , "Wonderwoman","Justiceleague","Joker","TheFlash"]

var sortNames = movieName.sorted { (s1:String, s2:String) ->Bool in
    return s1 < s2
}
print(sortNames)

func calculate(num: Int) -> Int {num*5}

func sum(num1: Int, num2: Int, closureparam: (Int) -> (Int)) -> Int {
    var sum = 0
    for i in num1...num2 {
        sum += closureparam(i)
    }
    return sum
}

print(sum(num1: 0, num2: 3, closureparam: calculate))

/*

func dataTask(with url: URL, completionHandler: @escaping(Data?,    //escaping keyword allows that completion handler is exceduted after the task is finished. closure is not executed imediately and its excution is delayed
    URLResponse?, Error?) -> Void) ->Void){
    //URLSessionDataTask
}
*/

//autoclosure

func printNumbers(_ result:@autoclosure () -> Void){
    print("One")
    result()
    print("Two")
}

//printNumbers {            //if autoclosure is not used then we have to provide the code within the parentheses
//    print("Three")
//}

//printNumbers(result: print("three"))    //autoclosure is used, now we can directly pass the code and it automatically wraps it inside parentheses

//this is further simplified by using a underscore which allows use to call the function without mentionung the closure

printNumbers(print("three"))
