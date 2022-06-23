//
//  SignalLightView.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 23.06.2022.
//

import SwiftUI

struct SignalLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct SignalLightView_Previews: PreviewProvider {
    static var previews: some View {
        SignalLightView(color: .red, opacity: 0.3)
    }
}
