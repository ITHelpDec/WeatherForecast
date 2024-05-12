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
            ForEach((0...6), id: \.self) {
                let day = Calendar.current.date(byAdding: .day, value: $0, to: Date.now) ?? Date.now
                
                DayForecast(
                    day: day,
                    isRainy: .random(),
                    high: .random(in: 70...80),
                    low: .random(in: 50...70))
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: Date
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
            Text(day.formatted(.dateTime.weekday(.abbreviated)))
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
