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
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColour: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColour)
                .font(.largeTitle)
            Text("High: \(high)ºF")
            Text("Low: \(low)ºF")
        }
        .padding()
    }
}
