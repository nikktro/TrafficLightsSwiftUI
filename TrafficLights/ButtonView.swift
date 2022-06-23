//
//  ButtonView.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 24.06.2022.
//

import SwiftUI

struct ButtonView: View {
    let buttonText: String
    
    var body: some View {
        Text(buttonText)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .font(.title.bold())
            .foregroundColor(.white)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 3))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "START")
    }
}
