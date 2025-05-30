class Hero {
    var name = "Batman"
    
    init()
    {
        print("I am \(name)")
    }
    func toolBelt(){
        print("Here is your cool gadget!")
    }
    deinit{                 //as soon as object is not being utilised it is cleared from the memmory using deinit
        print("Batman is gone, \(name)")
    }
}

for _ in 1...4
{
    let newhero = Hero()
    newhero.toolBelt()
}
