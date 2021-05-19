//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool

    @ViewBuilder
    var body: some View {
        if (isShowingDetailView) {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(true))
    }
}
