//
//  InitialScenePresenter.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

// MARK: - Presenter
final class InitialScenePresenter {
    weak var viewDelegate: InitialSceneViewDelegate?
    
    func didInputName(name: String?) {
        guard let name = name, name != "" else { return }
        viewDelegate?.proceedToGreetingScene(with: name)
    }
}
