//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Katerina Utlik on 4/14/21.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    var isShowingModal: Binding<Bool>
    @Published var isShowingSafariView: Bool = false
    
    init(framework: Framework, isShowingModal: Binding<Bool>) {
        self.framework = framework
        self.isShowingModal = isShowingModal
    }
}
