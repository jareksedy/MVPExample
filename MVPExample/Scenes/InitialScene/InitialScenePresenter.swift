//
//  InitialScenePresenter.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

// MARK: - Protocols
protocol InitialSceneViewDelegate: NSObjectProtocol {
    func proceedToGreetingScene(with name: String)
}

// MARK: - Implementations
class InitialScenePresenter {
    weak var initialSceneViewDelegate: InitialSceneViewDelegate?
    
    func didInputName(name: String?) {
        guard let name = name, name != "" else { return }
        initialSceneViewDelegate?.proceedToGreetingScene(with: name)
    }
}
