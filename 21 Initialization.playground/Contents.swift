//Initialization

class concatenate {
    var fname : String = "Captain"
    var lname : String = "America"
    
    var fullname : String
    
    init()                          //initialization is done when object is created
    {
        fullname = fname + lname    //this value will be stored in fullname on object creation
    }                               //as we are not passing any argument, we can directly use variable name instead of using self.
}
var name = concatenate()
print("Full name: \(name.fullname)")


// defining multiple initializer
class Marvel {
    var name: String
    init(movie: String, Date: String) {
        print("\(movie) \n \(Date)")
        self.name = movie
    }
    init(hero: String){
        self.name = hero
    }
}
var hero = Marvel(hero: "Ironman")
var hero2 = Marvel(movie: "Thor", Date: "25-5-2024")


//different ways of using initializer
class Hero {
    var hname : String
    init(firstname fname: String, lastname lname: String){
        hname = fname + lname
    }
    init(_ fname: String, _ lname: String){
        hname = fname + lname
    }
}
var heroName = Hero(firstname: "Black", lastname: "Panther")
var uname = Hero("Captain", "America")


// no initializer
class DC{
    var hname: String?          //making it as an optional as we are not passing any default value
    var movie = "Aquaman"
}
var dc = DC()


//failable init
struct User {
    var uuid: String
    
    init?(uuid: String){        //here initializer is an optional
        if uuid.count == 5 {    //when using an optional initializer we need to unwrap it properly
            self.uuid = uuid
        } else {
            return nil
        }
    }
}

var userme = User(uuid: "abc")
print("\(userme ?? User(uuid: "00000")!)")
