//
//  Wireframe.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/04.
//

import SwiftUI

final class Wireframe {
    
    static let shared = Wireframe()
    
    var navController: UINavigationController
    
    private init() {
        self.navController = UINavigationController()
    }
    
    func presentInitialViewController(window: UIWindow) {
        let viewController = CheckServiceLocator.provideCheckViewController()
        navController.setViewControllers([viewController], animated: true)
        window.rootViewController = navController
    }
    
    func presentCorrectViewController() {
        let viewController = CorrectServiceLocator.provideCorrectViewController()
        navController.pushViewController(viewController, animated: true)
    }
}
