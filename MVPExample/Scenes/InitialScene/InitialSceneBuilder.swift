//
//  InitialSceneBuilder.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

final class InitialSceneBuilder {
    static func build() -> (UIViewController & InitialSceneInput) {
        let presenter = InitialScenePresenter()
        let viewController = InitialSceneViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
