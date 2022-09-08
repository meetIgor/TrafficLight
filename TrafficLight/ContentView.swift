//
//  ContentView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var light = Light.start
    @State var title = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightView(light: light)
                Spacer()
                ButtonView(title: title, action: buttonPressed)
            }
            .padding()
        }
    }
    
    private func buttonPressed() {
        if title == "START" {
            title = "NEXT"
        }
        
        switch light {
        case .red:
            light = .yellow
        case .yellow:
            light = .green
        case .green:
            light = .red
        case .start:
            light = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(light: .start, title: "START")
    }
}
