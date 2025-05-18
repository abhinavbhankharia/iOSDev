//Structures

struct Marvel {
    var Series: String = " "
    var year: Int = 0
    var network: String = " "
}

var movieDetail = Marvel(Series: "Wanda Vision", year: 2021, network: "Disney")

print("series \(movieDetail.Series)")

var movie = Marvel()
movie.Series = "loki"
movie.year = 2021
movie.network = "Disney"

print("series \(movie.Series)")


struct MarvelSeries {
    var Series : String = " "
    var aired : Int = 0
    var network : String = " "
    
    func Details() -> String{
        return("\n Series: \(Series) \n Aired in \(aired)")
    }
}

var details = MarvelSeries()
details.Series = "Ms. Marvel"
details.aired = 2022
details.network = "Disney+"

print(details.Details())

//not initializing with default values
struct MarvelProduction {
    var series : String
    var aired : Int
    var network : String
    
    init(Series:String, AiredIn:Int, Network:String){       //init is a special method which is invoked as soon as you create an object
        self.series = Series
        self.aired = AiredIn
        self.network = Network
    }
}

var series = MarvelProduction(Series: "Hawkeye", AiredIn: 2021, Network: "Disney+")

print(series.series)
print(series.aired)
print(series.network)


//struct vs Class
//sturcts are value type

struct Movie{
    var name : String = " "
}

var info1 = Movie(name: "Ironman")

var info2 = info1    //they pass value and not reference hence changing value of info2 wont change the value for info1
info2.name = "avengers"

print(info1.name)
print(info2.name)
