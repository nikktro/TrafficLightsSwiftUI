//
//  ContentView.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var setColor: Color = .red
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                SignalLightView(color: .red, opacity: redOpacity)
                SignalLightView(color: .yellow, opacity: yellowOpacity)
                SignalLightView(color: .green, opacity: greenOpacity)
                Spacer()
                Button(action: { buttonPressed() }) {
                    ButtonView(buttonText: buttonText)
                }
            }
            .padding([.top, .bottom], 40)
        }
    }
    
    //MARK: - Private Methods
    private func buttonPressed() {
        buttonText = "NEXT"
        dimLightColor()
        changeLightColor()
    }
    
    private func dimLightColor() {
        redOpacity = 0.3
        yellowOpacity = 0.3
        greenOpacity = 0.3
    }
    
    private func changeLightColor() {
        switch setColor {
        case .red:
            redOpacity = 1
            setColor = .yellow
        case .yellow:
            yellowOpacity = 1
            setColor = .green
        default:
            greenOpacity = 1
            setColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
