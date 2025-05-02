//  array_name : [Datatype] = [Values]
var marvelHeros: [String] = ["Ironman", "Spiderman", "Thor"]

marvelHeros.count
marvelHeros.isEmpty
marvelHeros.append("Hulk")   //adds element to at the end of array

print(marvelHeros[0])      //element at 0th position

marvelHeros[0] = "Captain America"   //change element at 0th position

marvelHeros.append("Ironman")

marvelHeros.insert("Black Widow", at: 3)  //add element at the given index, shifts the other elements

//Methods in Arrays

marvelHeros.sort()     //sorts elements alphabetically,  stores in the same array
marvelHeros.reverse()  //sorts elements in reverse alphabetically,  stores in the same array
marvelHeros.sorted() //same as sort but performs on the copy of array
marvelHeros.reversed() //same as reverse but performs on the copy of array

 
//another way to define array
var dcHeros:Array<String> = Array<String>()
dcHeros.append("Superman")
dcHeros.append("Batman")
dcHeros.append("Wonder Woman")



