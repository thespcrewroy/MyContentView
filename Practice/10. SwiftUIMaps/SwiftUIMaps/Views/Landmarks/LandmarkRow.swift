//
//  LandmarkRow.swift
//  SwiftUIMaps
//
//  Created by Swapnil Roy on 3/9/24.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview("Turtle Rock") {
    Group {
        let landmarks = ModelData().landmarks
        return Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}
