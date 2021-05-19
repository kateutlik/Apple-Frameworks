//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 3/31/21.
//

import SwiftUI

final class FrameworksViewModel: ObservableObject {
    var frameworks = MockData.frameworks
    @Published var isShowingGridView = true
}
