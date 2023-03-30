//
//  ContentView.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 28.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "paperplane.circle.fill").symbolRenderingMode(.multicolor)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                
            VStack(alignment: .leading) {
                Text("Hello, SwiftUI!")
                
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.gray)
                
                HStack() {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Spacer()
                    Text("California")
                }
                
                }
        }
            
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
