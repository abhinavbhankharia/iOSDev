                   // key : value
var youtubeVideos: [String: Int] = ["react course" : 1122,
                                    "angular course": 2233,
                                    "nodejs course": 5566]

var angularVideo = youtubeVideos["angular course"]
//cautious about the key name, if "angular-course" is used then the value is considered as nil

youtubeVideos.keys //contains all the keys

youtubeVideos.values  //contains all the values

//this is not directly usable and needs to be converted into arrays of string

var courseName = [String](youtubeVideos.keys)   //type casted to array of strings, it is now accessible

print(courseName)

youtubeVideos.updateValue(6666, forKey: "nodejs course")
//this updates the value for nodejs course but throws the older value(5566)
//if we print the dictionary, the new value has been updated

print(youtubeVideos)

youtubeVideos["nodejs course"] = nil
youtubeVideos.removeValue(forKey: "react course")

print(youtubeVideos)

// nested dictionaries

var faq=[
    "faq1":[
        "question":"what is the start date of the course?",
        "answer:":"tomorrow"
    ],
    "faq2":[
        "question":"what is the price of the course?",
        "answer:":"50k INR"
    ]
]
var Q2 = faq["faq2"]?["question"]

