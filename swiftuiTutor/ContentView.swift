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
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.gray)
                
                HStack(alignment: .bottom) {
                    Text("Joshua Tree National Park")
                        .font(.title)
                    Spacer()
                    Text("California")
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Description:")
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    
                    Text("Turtle Rock is a neighborhood in the south part of Irvine, Orange County, California, near Concordia University, Irvine and the University of California, Irvine.")
                }
                
                }.padding()
            Spacer()
        }
            
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
