//
//  LandmarkDetail.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 04.04.2023.
//

import SwiftUI
import CoreLocation

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                MapView(coordinate: CLLocationCoordinate2D(latitude: 33.0,
                                                           longitude: 55.123) )
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
                
                CircleImage(image: landmark.image)
                
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(landmark.name).font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    HStack(alignment: .bottom) {
                        Text(landmark.park)
                            .font(.title2)
                        Spacer()
                        Text(landmark.state)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("About:")
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        
                        Text(landmark.description)
                    }
                    
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
