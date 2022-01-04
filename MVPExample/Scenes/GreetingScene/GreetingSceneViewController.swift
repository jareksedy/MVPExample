//
//  GreetingSceneViewController.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

// MARK: - Protocol
protocol GreetingSceneViewDelegate: NSObjectProtocol {
    func presentGreeting(with name: String)
}

// MARK: - Implementation
extension GreetingSceneViewController: GreetingSceneViewDelegate {
    func presentGreeting(with name: String) {
        nameLabel.text = name
    }
}

// MARK: - View
class GreetingSceneViewController: UIViewController {
    let presenter = GreetingScenePresenter()
    
    // MARK: - Properties
    var name: String?
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.greetingSceneViewDelegate = self
        presenter.didReceive(name: name)
    }
}
