//
//  ContentView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var light = Light.start
    @State private var title = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightView(light: light)
                    .aspectRatio(0.8, contentMode: .fit)
                Spacer()
                ButtonView(title: title, action: buttonPressed)
                    .padding(EdgeInsets(top: 0, leading: 70, bottom: 10, trailing: 70))
            }
            .padding()
        }
    }
    
    private func buttonPressed() {
        if title == "START" {
            title = "NEXT"
        }
        
        switch light {
        case .red: light = .yellow
        case .yellow: light = .green
        case .green: light = .red
        case .start: light = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
