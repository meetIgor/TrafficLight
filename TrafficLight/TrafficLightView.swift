//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let light: Light
    private let opacity = 0.4
    
    var body: some View {
        VStack(spacing: 15) {
            switch light {
            case .red:
                ColorCircleView(color: .red)
                ColorCircleView(color: .yellow).opacity(opacity)
                ColorCircleView(color: .green).opacity(opacity)
            case .yellow:
                ColorCircleView(color: .red).opacity(opacity)
                ColorCircleView(color: .yellow)
                ColorCircleView(color: .green).opacity(opacity)
            case .green:
                ColorCircleView(color: .red).opacity(opacity)
                ColorCircleView(color: .yellow).opacity(opacity)
                ColorCircleView(color: .green)
            case .start:
                ColorCircleView(color: .red)
                ColorCircleView(color: .yellow)
                ColorCircleView(color: .green)
            }
        }
        .aspectRatio(0.85, contentMode: .fit)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(light: .start)
    }
}

enum Light {
    case red
    case yellow
    case green
    case start
}
