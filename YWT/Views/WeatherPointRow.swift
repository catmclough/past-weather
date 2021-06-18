//
//  WeatherPointRow.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/17/21.
//

import SwiftUI

struct WeatherPointRow: View {
    var point: WeatherPoint
    var body: some View {
        HStack {
            Spacer()
            Text("Wed")
            Spacer()
            point.current.weather[0].iconImage
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
            Text("\(String(point.current.temp))°")
            Spacer()
        }
    }
}

struct WeatherPointRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherPointRow(point: weatherPoint)
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
