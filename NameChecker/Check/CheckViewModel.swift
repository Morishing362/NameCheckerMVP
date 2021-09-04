//
//  CheckModel.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/03.
//

import Foundation

final class CheckViewModel: ObservableObject {
    
    @Published
    var username: String = ""
    
    @Published
    var usernameForView = ""
    
    @Published
    var isInitial: Bool = true

    @Published
    var isCorrect: Bool = false
}
