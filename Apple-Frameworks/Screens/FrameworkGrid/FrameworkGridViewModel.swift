//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Gonçalo Rocha on 25/10/2023.
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
