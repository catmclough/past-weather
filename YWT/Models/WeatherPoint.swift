//
//  Day.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/17/21.
//

import Foundation
import SwiftUI

struct WeatherPoint: Hashable, Codable {
    var current: CurrentWeather
    struct CurrentWeather: Hashable, Codable {
        var temp: Double
        var weather: [WeatherData]
        
        struct WeatherData: Hashable, Codable {
            var icon: String
            var iconImage: Image {
                Image(icon)
            }
        }
    }
}
