//
//  Untitled.swift
//  Landmarks
//
//  Created by Jeff Wang on 9/2/25.
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
        }
//        .padding()
    }
}


#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}
#Preview("Silver Salmon Creek") {
    LandmarkRow(landmark: landmarks[1])
}

#Preview("Grouped Test") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

