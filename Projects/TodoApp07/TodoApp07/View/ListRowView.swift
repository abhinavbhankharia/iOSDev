//
//  ListRowView.swift
//  TodoApp07
//
//  Created by Abhinav Bhankharia on 10/06/25.
//

import SwiftUI

struct ListRowView: View {
    var item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical, 8)
    }
}

#Preview {
    var item1 = ItemModel(Title: "Item 1", IsCompleted: true)
    ListRowView(item: item1)
}
