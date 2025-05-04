var course: (String, Int, Bool) = ("iOS Course", 999, true)

//while defining values you need to take care of the order of data types


course.0

var(coursename,  courseprice, coursestatus) = course

coursename



//another way of defining a tuple
var course1: (courseName: String,  coursePrice: Int, courseStatus: Bool) = ("iOS Course", 999, true)
//this is called as named tuple
course1.0
coursename


//let movieInfoOne = ("Man of Steel", 2013)
//let movieInfoTwo: (String, Int) = ("Man of Steel", 2013)

// named tupled
let movieInfoOne = (Name:"Man of Steel", year: 2013)
let movieInfoTwo: (Name: String, Year: Int) = ("Man of Steel", 2013)


print(movieInfoOne.Name)
