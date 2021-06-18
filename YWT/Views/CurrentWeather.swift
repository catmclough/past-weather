//
//  CurrentWeather.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/17/21.
//

import SwiftUI

struct CurrentWeather: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0) {
            Text("It's \(getCurrentDateString()) and it's currently 75° and sunny in Thai Town.")
            Text("24 hours ago it was 3° cooler.")
        }
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func getCurrentDateString() -> String {
        let date = Date()
        
        // Use this to add st, nd, th, to the day
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .ordinal
        numberFormatter.locale = Locale.current

        let weekdayFormatter = DateFormatter()
        weekdayFormatter.dateFormat = "EEEE"
        
        //Set other sections as preferred
        let monthFormatter = DateFormatter()
        monthFormatter.dateFormat = "MMMM"

        // Works well for adding suffix
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "dd"

        let weekdayString = weekdayFormatter.string(from: date)
        let monthString = monthFormatter.string(from: date)
        let dayString = dayFormatter.string(from: date)

        // Add the suffix to the day
        let dayNumber = NSNumber(value: Int(dayString)!)
        let day = numberFormatter.string(from: dayNumber)!

        return "\(weekdayString), \(monthString) \(day)"
    }
}

struct CurrentWeather_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeather()
    }
}
