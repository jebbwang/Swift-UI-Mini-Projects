//
//  ContentView.swift
//  Landmarks
//
//  Created by Jeff Wang on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
        }
        
        VStack (alignment: .leading) {
            
            Text("Turtle Rock")
                .font(.title)
                .bold()
            
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Text("California")
                    .font (.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.subheadline)
                .bold()
            Text("A beautiful and transquil place located in the heart of Joshua Tree National Park.")
                .font(.caption)
        }
        .padding()
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
