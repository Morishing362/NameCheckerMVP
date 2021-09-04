//
//  CheckPresenterImpl.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/03.
//
import UIKit

protocol CheckPresenter {
    
    func checkButtonWasPressed()
}

final class CheckPresenterImpl: CheckPresenter {
    
    private var viewModel: CheckViewModel
    private var wireframe: Wireframe
    
    init(viewModel: CheckViewModel, wireframe: Wireframe) {
        self.viewModel = viewModel
        self.wireframe = wireframe
    }
    
    func checkButtonWasPressed() {
        if viewModel.isInitial {
            viewModel.isInitial = false
        }
        
        if viewModel.username == "Admin" {
            viewModel.isCorrect = true
            wireframe.presentCorrectViewController()
        } else {
            viewModel.isCorrect = false
        }
        
        viewModel.usernameForView = viewModel.username
    }
}
