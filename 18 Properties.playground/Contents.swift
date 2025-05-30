class Comic {
    var production: String = ""
    var name: String = ""
    
}

var comic = Comic()         //initiating an object from class Comic
comic.name = "Black Widow"
comic.production = "Marvel"
print("Name is : \(comic.name)\n Production is: \(comic.production)")


//lazy stored property
//lazy variable are defined when they are actually called, this results in less memory consumption
class ComicStore {
    var name: String
    lazy var comicInfo: String = {
        return "Welcome to \(self.name)"
    }()
    init(Name: String){
        self.name = Name
    }
    
}

let store = ComicStore(Name: "Marvel Production")
print(store.comicInfo)


//Computed properties
class Circle {
    var radius: Double?
    var cval: Double?           //computed property, they are never proccessed or passed
    var Area: Double {
        get {                               //getter method
            return radius! * radius!
        }
        set(newArea){                       //setter method
            cval = Double(newArea) * 3.14
        }
    }
}

let result = Circle()
result.Area = 20
print(result.cval!)

//read only

class Multiplication {
    var num1 : Int = 5
    var num2 : Int = 5
    
    var mutiply: Int {          //you cannot set this, you can only get this value, hence read only property
        get {
            return num1 * num2
        }
    }
}

let res = Multiplication()
//res.mutiply = 40              //this is not allowed
print(res.mutiply)


// Swift property observer

class Changes {
    var num1: Int = 10 {
        willSet(newvalue){        //observer property, it will monitor for value change
            print("value of \(newvalue)")
        }
        didSet{                   //observer property, it will monitor for value change
            if num1 > oldValue{
                print("Added \(num1 - oldValue)")
            }
        }
    }
}

let answer = Changes()
answer.num1 = 56
answer.num1 = 345
