//
//  HomeView.swift
//  FitnessApp
//
//  Created by 中田伊織 on 2022/10/14.
//

import SwiftUI

struct HomeView: View {
    @State var showSideMenu: Bool
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    HomeTimelineView()
                }
                .onTapGesture {
                    if showSideMenu {
                        showSideMenu = false
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            //サイドメニューを開く
                            self.showSideMenu.toggle()
                            
                        }) {
                            Image(systemName: "line.3.horizontal")
                                .imageScale(.large)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            //設定を開く
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
            SideMenuView(isOpen: $showSideMenu)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showSideMenu: false)
    }
}
