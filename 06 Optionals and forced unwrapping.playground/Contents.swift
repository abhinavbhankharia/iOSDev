// Optionals

var userCity:String?   //this is an optional, it may hold a String value or NIL
var userActive:Bool?   //this is an optional, may hold boolean value or NIL

userCity = "Delhi"

print(userCity)  //this prints the value with optional sign


//forced unwrapping
//this is not a good way to handle optionals
print(userCity!) //this prints the value without the optional sign

//a careful and graceful way to do this is by optional binding
