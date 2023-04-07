//
//  LandmarkRow.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 03.04.2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
            Text(landmark.name)
            Spacer()
            
            Image(systemName: landmark.isFavorite ? "star.fill" : "star")
                .foregroundColor( landmark.isFavorite ? .yellow :.gray)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks = ModelData().landmarks
        
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
