//
//  MainView.swift
//  FitnessApp
//
//  Created by 中田伊織 on 2022/10/14.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    HomeView()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "gearshape")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Title")
                            .font(.title)
                    }
                }
            }.tabItem() {
                Image(systemName: "house")
            }.tag(1)
            
            AdminView().tabItem() {
                Image(systemName: "person")
            }.tag(2)
            
            DirectMessageView().tabItem() {
                Image(systemName: "envelope")
            }.tag(3)
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
