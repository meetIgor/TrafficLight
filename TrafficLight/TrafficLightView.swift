//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

enum Light {
    case red, yellow, green, start
}

struct TrafficLightView: View {
    let light: Light
    private let on = 1.0
    private let off = 0.4
    
    var body: some View {
        VStack(spacing: 15) {
            switch light {
            case .red:
                ColorCircleView(color: .red, opacity: on)
                ColorCircleView(color: .yellow, opacity: off)
                ColorCircleView(color: .green, opacity: off)
            case .yellow:
                ColorCircleView(color: .red, opacity: off)
                ColorCircleView(color: .yellow, opacity: on)
                ColorCircleView(color: .green, opacity: off)
            case .green:
                ColorCircleView(color: .red, opacity: off)
                ColorCircleView(color: .yellow, opacity: off)
                ColorCircleView(color: .green, opacity: on)
            case .start:
                ColorCircleView(color: .red, opacity: on)
                ColorCircleView(color: .yellow, opacity: on)
                ColorCircleView(color: .green, opacity: on)
            }
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(light: .start)
    }
}
