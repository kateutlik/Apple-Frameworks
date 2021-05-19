//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

struct FrameworksView: View {
    @StateObject var viewModel = FrameworksViewModel()
    
    var body: some View {
        NavigationView {
            self.body(for: viewModel.isShowingGridView)
            .navigationTitle(" Frameworks")
            .toolbar {
                ViewToggleButton(isShowingGridView: $viewModel.isShowingGridView)
            }
        }
    }
    
    @ViewBuilder
    private func body(for isShowingGridView: Bool) -> some View {
        if viewModel.isShowingGridView {
            FrameworksGridView(viewModel: FrameworksGridViewModel(frameworks: viewModel.frameworks))
        } else {
            FrameworksListView(viewModel: FrameworksListViewModel(frameworks: viewModel.frameworks))
        }
    }
}

struct FrameworksView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksView()
            .preferredColorScheme(.light)
    }
}
