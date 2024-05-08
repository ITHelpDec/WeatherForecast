//
//  ContentView.swift
//  WeatherForecast
//
//  Created by ITHelpDec on 30/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if (isRainy) {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: iconName)
                .foregroundStyle(Color.yellow)
            Text("High: \(high)ºF")
            Text("Low: \(low)ºF")
        }
        .padding()
    }
}
