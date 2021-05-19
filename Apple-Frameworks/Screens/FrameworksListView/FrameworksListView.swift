//
//  FrameworksListView.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/1/21.
//

import SwiftUI

struct FrameworksListView: View {
    @ObservedObject var viewModel: FrameworksListViewModel

    var body: some View {
        List {
            ForEach(viewModel.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework,
                                                                                                    isShowingModal: .constant(false)))) {
                    FrameworkTitleListItemView(framework: framework)
                }
            }
        }
    }
}

struct FrameworksListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView(viewModel: FrameworksListViewModel(frameworks: MockData.frameworks))
    }
}
