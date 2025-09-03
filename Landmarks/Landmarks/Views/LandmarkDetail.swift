//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jeff Wang on 9/3/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                    .bold()
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(landmark.state)
                        .font (.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.subheadline)
                    .bold()
                Text(landmark.description)
                    .font(.caption)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
