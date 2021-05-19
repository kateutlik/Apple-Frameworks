//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/14/21.
//

import SwiftUI

final class FrameworksGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var frameworks: [Framework]
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    init(frameworks: [Framework]) {
        self.frameworks = frameworks
    }
    
}
