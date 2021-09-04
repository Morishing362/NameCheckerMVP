//
//  ServiceLocator.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/04.
//

import SwiftUI

final class CheckServiceLocator {
    
    static func provideCheckViewController() -> UIViewController {
        let viewModel = CheckViewModel()
        let presenter = CheckPresenterImpl(viewModel: viewModel, wireframe: Wireframe.shared)
        let view = CheckView(presenter: presenter, viewModel: viewModel)
        let viewController = UIHostingController(rootView: view)
        
        return viewController
    }
}
