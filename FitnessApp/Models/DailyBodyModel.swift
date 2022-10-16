//
//  BodyModel.swift
//  FitnessApp
//
//  Created by 中田伊織 on 2022/10/16.
//

import Foundation

struct DailyBodyModel: Identifiable {
    var id: String
    var date: Date
    var weight: Double
    
    init(id: String, month: Int, day: Int, weight: Double) {
        self.id = id
        let date = Calendar.autoupdatingCurrent.date(from: DateComponents(month: month, day: day))!
        self.date = date
        self.weight = weight
    }
    
}
