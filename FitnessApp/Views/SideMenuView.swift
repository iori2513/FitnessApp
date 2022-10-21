import SwiftUI

struct SideMenuView: View {
    
    @Binding var isOpen: Bool
    let screen = UIScreen.main.bounds
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack(alignment: .top) {
                    Image(systemName: "house")
                        .frame(width: 50, height: 50)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.gray.opacity(0.5))
            .animation(.easeInOut, value: isOpen)
            .offset(x: isOpen ? -geometry.size.width * 0.3 : -geometry.size.width)
        }
    }
}
