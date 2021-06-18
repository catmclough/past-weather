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
            Text("It's currently 75° and sunny in Thai Town.")
            Text("24 hours ago it was 3° cooler.")
        }
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CurrentWeather_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeather()
    }
}
