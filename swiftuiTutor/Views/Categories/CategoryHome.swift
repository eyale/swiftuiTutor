//
//  CategoryHome.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 13.04.2023.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                
                modelData.features[0].image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .listRowInsets(EdgeInsets())
//                    .clipShape(Circle())
//                    .overlay(Rectangle().stroke(Color.accentColor, lineWidth: 2.2))
                
                ForEach(
                    modelData.categories.keys.sorted(),
                    id: \.self
                ) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
