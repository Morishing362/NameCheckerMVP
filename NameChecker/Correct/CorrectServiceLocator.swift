//
//  CorrectServiceLocator.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/04.
//

import Foundation


import SwiftUI

final class CorrectServiceLocator {
    
    static func provideCorrectViewController() -> UIViewController {
        let view = CorrectView()
        let viewController = UIHostingController(rootView: view)
        
        return viewController
    }
}
