//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
            .shadow(color: .yellow, radius: 4)
            .opacity(opacity)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
