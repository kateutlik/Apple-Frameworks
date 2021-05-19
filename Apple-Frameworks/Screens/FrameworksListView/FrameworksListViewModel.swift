//
//  FrameworksListViewModel.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/14/21.
//

import SwiftUI

final class FrameworksListViewModel: ObservableObject {
    var frameworks: [Framework]
    
    init(frameworks: [Framework]) {
        self.frameworks = frameworks
    }
}
