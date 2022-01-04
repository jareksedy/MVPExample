//
//  GreetingScenePresenter.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import Foundation

// MARK: - Protocols
protocol GreetingSceneViewDelegate: NSObjectProtocol {
    func presentGreeting(with name: String)
}

// MARK: - Implementations
class GreetingScenePresenter {
    weak var greetingSceneViewDelegate: GreetingSceneViewDelegate?
    
    func didReceive(name: String?) {
        guard let name = name, name != "" else { return }
        greetingSceneViewDelegate?.presentGreeting(with: name)
    }
}
