//
//  ContentView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

enum Light {
    case red, yellow, green, start
}

struct ContentView: View {
    @State private var light = Light.start
    @State private var title = "START"
    
    private let on = 1.0
    private let off = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 15) {
                    ColorCircleView(
                        color: .red,
                        opacity: light == .red ? on : off
                    )
                    ColorCircleView(
                        color: .yellow,
                        opacity: light == .yellow ? on : off
                    )
                    ColorCircleView(
                        color: .green,
                        opacity: light == .green ? on : off
                    )
                }
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
