//
//  FavoriteButton.swift
//  swiftuiTutor
//
//  Created by Anton Honcharov on 07.04.2023.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Is Favorite",
                  systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }.scaleEffect(isSet ? 1.1 : 1).animation(.easeOut, value: 1.1)
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
