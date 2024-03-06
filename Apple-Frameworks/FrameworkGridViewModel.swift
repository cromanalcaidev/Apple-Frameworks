//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Carlos Román Alcaide on 6/3/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
