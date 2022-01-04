//
//  InitialScenePresenter.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

// MARK: - Protocols
protocol InitialSceneInput: AnyObject {
    
}

protocol InitialSceneOutput: AnyObject {
    func viewDidInputName(with name: String)
}

// MARK: - Implementation
final class InitialScenePresenter {
    weak var viewInput: (UIViewController & InitialSceneInput)?
    
    private func goToGreetingScene() {
        viewInput?.performSegue(withIdentifier: "toGreetingScene", sender: nil)
    }
}

// MARK: - Extensions
extension InitialScenePresenter: InitialSceneOutput {
    func viewDidInputName(with name: String) {
        goToGreetingScene()
    }
}
