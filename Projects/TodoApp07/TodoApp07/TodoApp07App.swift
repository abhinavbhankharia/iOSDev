//
//  TodoApp07App.swift
//  TodoApp07
//
//  Created by Abhinav Bhankharia on 09/06/25.
//

import SwiftUI

@main
struct TodoApp07App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
