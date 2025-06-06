// Classes

class DC {
    var series: String
    var aired: Int
    var network: String
    
    init(Series: String, AiredIn: Int, Network: String){    //initializing variables
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
    
}

var dc = DC(Series: "Wonder Women", AiredIn: 2017, Network: "Atlas")

print("Movie name is \(dc.series)")


// classes are reference types

class Details {
    var name: String
    init(name: String){
        self.name = name
    }
}


var minfo = Details(name: "Superman")
var minfoTwo = minfo        //here reference is passed and not values

minfoTwo.name = "Batman"    //hence, changing the value of minfoTwo actually changes the value of minfo as minfoTwo contains reference of minfo

print(minfo.name)
print(minfoTwo.name)
