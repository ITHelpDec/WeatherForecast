//
//  ContentView.swift
//  WeatherForecast
//
//  Created by ITHelpDec on 30/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            DayForecast(day: "Wed", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Thu", isRainy: true, high: 60, low: 40)
            DayForecast(day: "Fri", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Sat", isRainy: true, high: 60, low: 40)
            DayForecast(day: "Sun", isRainy: true, high: 60, low: 40)
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
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColour: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        HStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColour)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)ºF")
                .fontWeight(.semibold)
            Text("Low: \(low)ºF")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
