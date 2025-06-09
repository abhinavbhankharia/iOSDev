//
//  ItemModel.swift
//  TodoApp07
//
//  Created by Abhinav Bhankharia on 09/06/25.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String
    
    //to follow ide
    init( Id: String = UUID().uuidString, Title: String, IsCompleted: Bool){   //to follow identifiable protocol, we will be generating a unique ID which is a string
    //initializer will create a unique ID whenever struct is used
        self.id = Id
        self.title = Title
        self.isCompleted = IsCompleted
    }
    
    //updation method
    
    func updateCompleted() -> ItemModel {
        
        return ItemModel(Id: id, Title: title, IsCompleted: !isCompleted)
    }
    
}
