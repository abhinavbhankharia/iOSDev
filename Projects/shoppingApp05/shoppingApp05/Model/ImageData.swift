//
//  ImageData.swift
//  shoppingApp05
//
//  Created by Abhinav Bhankharia on 06/06/25.
//

import Foundation

struct fruitModel {
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color: String
    
}

enum fruitTitle: String{
    case apple, apricot, avocado, banana,blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange,papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
