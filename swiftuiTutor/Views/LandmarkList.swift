//
//  LandmarkList.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 04.04.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /// Landmark struct should confirm to Identiable protocol
        /// List(landmarks, id: \.id) { landmark in
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
