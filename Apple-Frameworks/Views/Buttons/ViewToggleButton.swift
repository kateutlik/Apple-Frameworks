//
//  ViewToggleButton.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/1/21.
//

import SwiftUI

struct ViewToggleButton: View {
    @Binding var isShowingGridView: Bool

    var body: some View {
        Button {
            isShowingGridView.toggle()
        } label: {
            Image(systemName: isShowingGridView ? "list.bullet" : "square.grid.2x2")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width: 44, height: 44)
        }
    }
}

struct ViewToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ViewToggleButton(isShowingGridView: .constant(true))
    }
}
