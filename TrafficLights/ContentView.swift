//
//  ContentView.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Private Properties
    @State private var setColor: Color = .clear
    @State private var buttonTitle = "START"
    
    //MARK: - Private Methods
    private func changeLightColor() {
        switch setColor {
            case .red: setColor = .yellow
            case .yellow: setColor = .green
            default: setColor = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                SignalLightView(color: .red, opacity: setColor == .red ? 1 : 0.3)
                SignalLightView(color: .yellow, opacity: setColor == .yellow ? 1 : 0.3)
                SignalLightView(color: .green, opacity: setColor == .green ? 1 : 0.3)
                
                Spacer()
                
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeLightColor()
                }
            }
            .padding([.top, .bottom], 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
