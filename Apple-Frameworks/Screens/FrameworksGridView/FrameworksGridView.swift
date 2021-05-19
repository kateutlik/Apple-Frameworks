//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct FrameworksGridView: View {
    @ObservedObject var viewModel: FrameworksGridViewModel
    
    var body: some View {
        ScrollView {
            Divider()
                .background(Color(.label))
                .padding()
            LazyVGrid(columns: viewModel.columns) {
                ForEach(viewModel.frameworks) { framework in
                    FrameworkTitleView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
        }
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!,
                                                                    isShowingModal: $viewModel.isShowingDetailView))
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView(viewModel: FrameworksGridViewModel(frameworks: MockData.frameworks))
            .preferredColorScheme(.dark)
    }
}
