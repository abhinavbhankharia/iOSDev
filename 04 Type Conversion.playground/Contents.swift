let googleStock = 12.5

let userStockBuy: Int = Int(googleStock)    //coverting from double to integer

let userAge = "55"

// let userAgeInSystem = userAge + 5   Interger is being added to string

//let userAgeInSystem = Int(userAge) + 5  what if age is entered as 55k

//so store the age in another variable then perform operation


let userAgeInSystem = Int(userAge)

let StoredAge =  (Int(userAge) ?? 0) + 5

//if userage is unable to convert to int then system takes 0 and performs the execution
