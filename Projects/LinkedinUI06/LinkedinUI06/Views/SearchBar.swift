//
//  SearchBarView.swift
//  LinkedinUI06
//
//  Created by Abhinav Bhankharia on 08/06/25.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(c)
        }
    }
}

#Preview {
    SearchBarView()
}
