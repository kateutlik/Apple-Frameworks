//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct FrameworkTitleListItemView: View {
    let framework: Framework

    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkTitleListItemView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleListItemView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
