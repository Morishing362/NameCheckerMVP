//
//  CheckView.swift
//  NameChecker
//
//  Created by Shingo Morishita on 2021/09/03.
//

import SwiftUI

struct CheckView: View {
    
    private var presenter: CheckPresenter?
    
    @ObservedObject
    private var viewModel: CheckViewModel
    
    init(presenter: CheckPresenter?, viewModel: CheckViewModel) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        VStack {
            Text("あなたの名前を入力してチェックしてみましょう！")
                .padding()
            
            TextField("名前", text: $viewModel.username).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button(action: presenter!.checkButtonWasPressed) {
                Text("チェック")
            }
            
            if !viewModel.isInitial && !viewModel.isCorrect {
                    Text("あなたの名前は\(viewModel.usernameForView)ではありません🙁").padding()
            }
        }.animation(.default)
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = CheckViewModel()
        let presenter = CheckPresenterImpl(viewModel: viewModel, wireframe: Wireframe.shared)
        return CheckView(presenter: presenter, viewModel: viewModel)
    }
}
