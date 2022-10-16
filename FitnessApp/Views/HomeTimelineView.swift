//
//  HomeMainView.swift
//  FitnessApp
//
//  Created by 中田伊織 on 2022/10/16.
//

import SwiftUI

struct HomeTimelineView: View {
    
    private let imageNames: [String] = ["heart",
    "arrowshape.turn.up.backward.circle",
    "star.square.fill"]
    
    var body: some View {
        
        VStack {
            ForEach(1..<10) { count in
                VStack(alignment: .leading, spacing: 5) {
                        HStack(alignment: .top, spacing: 20) {
                            Image("sampleIcon2")
                                .resizable()
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading, spacing: 3) {
                                Text("sample name \(count)")
                                    .fontWeight(.bold)
                                Text("@userid")
                                    .fontWeight(.thin)
                                Spacer()
                                Text("This is sample sentence.")
                                Image("samplePostImage")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 200)
                                    .cornerRadius(20)
                                Spacer()
                                HStack(spacing: 20) {
                                    ForEach(imageNames, id:\.self) { imageName in
                                        Image(systemName: "\(imageName)")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    }
                                }
                                .frame(height: 30)
                            }
                        }
                            
                }
                Divider()
            }
        }
        
    }
}

struct HomeTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTimelineView()
    }
}
