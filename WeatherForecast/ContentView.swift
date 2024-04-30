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
            ExtractedView()
            
            VStack {
                Text("Tue")
                Image(systemName: "cloud.rain.fill")
                    .foregroundStyle(Color.blue)
                Text("High: 60")
                Text("Low: 40")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            Text("Mon")
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("High: 70")
            Text("Low: 50")
        }
        .padding()
    }
}
