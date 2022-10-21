import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            HomeView(showSideMenu: false).tabItem() {
                Image(systemName: "house")
            }.tag(1)
            
            AdminView().tabItem() {
                Image(systemName: "person")
            }.tag(2)
            
            LogInView().tabItem() {
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
