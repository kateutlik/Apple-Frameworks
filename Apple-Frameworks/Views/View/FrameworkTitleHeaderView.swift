//
//  FrameworkTitleHeader.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/1/21.
//

import SwiftUI

struct FrameworkTitleHeaderView: View {
    let framework: Framework
    @Binding var isShowingSafariView: Bool

    var body: some View {
        HStack(alignment: .top) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 140, height: 140)
                .padding(.trailing)
            VStack(alignment: .leading, spacing: 10) {
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)

                Button {
                    isShowingSafariView = true
                } label: {
                    AFButton(title: "Learn More", textColor: .white, backgroundColor: Color.red)
                }
                
                Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!, label: {
                    AFButton(title: "Open in Safari", textColor: .white, backgroundColor: Color.blue)
                })
            }
            Spacer()
        }
        .padding()
    }
}

struct FrameworkTitleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleHeaderView(framework: MockData.sampleFramework, isShowingSafariView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
