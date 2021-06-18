//
//  WeatherPointList.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/17/21.
//

import SwiftUI

struct WeatherPointList: View {
    var body: some View {
        List {
            WeatherPointRow(point: weatherPoint)
        }
    }
}

struct WeatherPointList_Previews: PreviewProvider {
    static var previews: some View {
        WeatherPointList()
    }
}
