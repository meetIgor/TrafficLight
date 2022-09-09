//
//  ButtonView.swift
//  TrafficLight
//
//  Created by igor s on 08.09.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .padding()
                .frame(minWidth: .zero,  maxWidth: .infinity)
                .background(.black)
                .foregroundColor(.yellow)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
                .shadow(color: .yellow, radius: 5)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
