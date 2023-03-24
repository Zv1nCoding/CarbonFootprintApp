//
//  ProgressHistory.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/15/23.
//

import Foundation
import SwiftUI
import Charts
import UIKit

struct ProgressModel: Identifiable {
    let id = UUID()
    let carbonFootprint: Double
    let atDate: Date
}


struct ProgressHistory: View {
    
    
    let list = [
        ProgressModel(carbonFootprint: CarbonFootprintNow, atDate: dateFormat.date(from: "01/03/2022") ?? Date()),
        ProgressModel(carbonFootprint: 8.3, atDate: dateFormat.date(from: "06/03/2022") ?? Date()),
        ProgressModel(carbonFootprint: 5.2, atDate: dateFormat.date(from: "11/03/2022") ?? Date()),
        ProgressModel(carbonFootprint: 4.5, atDate: dateFormat.date(from: "16/03/2022") ?? Date()),
    ]
    
    func formatDate(_ date: Date) -> String {
        let cal = Calendar.current
        let dateComponents = cal.dateComponents([.day, .month], from: date)
        guard let day = dateComponents.day, let month = dateComponents.month else {
            return "-"
        }
        return "\(day)/\(month)"
    }
    
    static var dateFormat: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd/MM/yy"
        return df
    }()
    
    var body: some View {
        Chart(list) { progressModel in
            LineMark(x: .value("Month", progressModel.atDate), y: .value("Footprint", progressModel.carbonFootprint)).foregroundStyle(.red)
        }
    }
    
}
