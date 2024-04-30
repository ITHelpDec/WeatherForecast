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
            Text("Mon")
            Image(systemName: "sun.max.fill")
            Text("High: 70")
            Text("Low: 50")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
