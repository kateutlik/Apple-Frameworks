//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingModal.wrappedValue)
            
            FrameworkTitleHeaderView(framework: viewModel.framework, isShowingSafariView: $viewModel.isShowingSafariView)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                                isShowingModal: .constant(true)))
            .preferredColorScheme(.dark)
    }
}
