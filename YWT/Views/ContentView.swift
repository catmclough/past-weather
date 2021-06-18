//
//  ContentView.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("YWT")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            Image("frog")
                .resizable()
                .frame(width: 100, height: 100)
            Greeting()
            CurrentWeather()
            Text("Here's what it's looked like for the past 5 days:")
                .padding(.vertical)
                .frame(maxWidth: .infinity, alignment: .leading)
            WeatherPointList()
            Spacer()
            Text("Icons made by Freepik from flaticon.com")
                .font(.caption2)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
        }
            .padding()
            .ignoresSafeArea(edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
