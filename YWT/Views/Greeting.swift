//
//  Greeting.swift
//  YWT
//
//  Created by Cat McLoughlin on 6/17/21.
//

import SwiftUI

struct Greeting: View {
    var body: some View {
        Text("Hello, Allie.")
            .font(.title)
            .padding(.bottom)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct Greeting_Previews: PreviewProvider {
    static var previews: some View {
        Greeting()
    }
}
