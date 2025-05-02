var accountBalance = 199
var alertTrigger = 100
var offerTrigger = 150

//<, >, <=, >=, !=, ==

if accountBalance <= alertTrigger {
    print("Please recharge your account")
} else if accountBalance >= offerTrigger{
    print("we are offering you a credit card")
}


var googleCred = true
var paymentInfo = false

if googleCred && paymentInfo{
    print("make purchase")
} else {
    print("not allowed to purchase")
}


var courseName:String?              //this is an optional for coursename
var isLoggedIn:Bool? = true         //this is an optional for log in status

if let getCourseName = courseName{     //here optional unwrapping is done on courseName
    print(getCourseName)               // when there is a variable which may or not be present, in such case you                                    declare an new variable
                                        // this new variable is declared on a condition, that if courseName is present then print the new variable otherwise dont even allocate the memory
}

var courseWithPrice: [String: Int] = ["Reactjs" : 199,
                                      "angularjs" : 299]
if let user = isLoggedIn, let reactprice = courseWithPrice["Reactjs"]{
    print("user is \(user) and price is \(reactprice)")
}

// Even if any of the value is missing, then there is no error and the code does not execute
