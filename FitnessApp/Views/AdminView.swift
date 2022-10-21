import SwiftUI
import Charts

struct AdminView: View {
    
    var data: [DailyBodyModel] = [
        DailyBodyModel(id: "001", month: 10, day: 15, weight: 65),
        DailyBodyModel(id: "002", month: 10, day: 16, weight: 65.6),
        DailyBodyModel(id: "003", month: 10, day: 17, weight: 68),
        DailyBodyModel(id: "004", month: 10, day: 18, weight: 30),
        DailyBodyModel(id: "005", month: 10, day: 19, weight: 40),
        DailyBodyModel(id: "006", month: 10, day: 20, weight: 40),
        DailyBodyModel(id: "007", month: 10, day: 21, weight: 100),
        DailyBodyModel(id: "008", month: 10, day: 22, weight: 21),
        DailyBodyModel(id: "009", month: 10, day: 23, weight: 40),
        DailyBodyModel(id: "010", month: 10, day: 24, weight: 64),
        DailyBodyModel(id: "011", month: 10, day: 25, weight: 40),
        DailyBodyModel(id: "012", month: 10, day: 26, weight: 78),
        DailyBodyModel(id: "013", month: 10, day: 27, weight: 40),
        DailyBodyModel(id: "014", month: 10, day: 28, weight: 54),
    ]
    
    var body: some View {
        ScrollView {
            VStack() {
                ScrollView(.horizontal) {
                    Chart(data) {
                        LineMark(
                            x: .value("Date", $0.date),
                            y: .value("weight", $0.weight)
                        )
                    }
                    .frame(width: 700, height: 500)
                }
            }
        }
    }
}

struct AdminView_Previews: PreviewProvider {
    static var previews: some View {
        AdminView()
    }
}
