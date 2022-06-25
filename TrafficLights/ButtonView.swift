//
//  ButtonView.swift
//  TrafficLights
//
//  Created by Nikolay Trofimov on 24.06.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 50)
        .background(Color.blue)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 3))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
