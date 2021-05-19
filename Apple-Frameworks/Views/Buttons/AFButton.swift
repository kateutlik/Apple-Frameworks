//
//  Button.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct AFButton: View {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(textColor)
            .frame(width: 180, height: 40)
            .background(backgroundColor)
            .cornerRadius(10)
            .scaledToFit()
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More", textColor: .white, backgroundColor: Color.red)
    }
}
