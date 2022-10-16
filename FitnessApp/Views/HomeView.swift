//
//  HomeView.swift
//  FitnessApp
//
//  Created by 中田伊織 on 2022/10/14.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                HomeTimelineView()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.3.horizontal")
                            .imageScale(.large)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "gearshape")
                            .imageScale(.large)
                    }
                }
                ToolbarItem(placement: .principal) {
                    Image("sampleIcon")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
