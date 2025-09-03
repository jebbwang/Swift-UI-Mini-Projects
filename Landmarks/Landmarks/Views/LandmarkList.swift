//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jeff Wang on 9/2/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // for each row in the list, set the navigation link to landmark detail and set the row as landmarkrow
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        detail: {
            Text("Select a landmark to see more details.")
        }
    }
}


#Preview {
    LandmarkList()
}
