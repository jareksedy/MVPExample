//
//  GreetingSceneViewController.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

class GreetingSceneViewController: UIViewController {
    let presenter = GreetingScenePresenter()
    
    // MARK: - Properties
    var name: String?
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.didReceive(name: name)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.greetingSceneViewDelegate = self
    }
}

// MARK: - Extensions
extension GreetingSceneViewController: GreetingSceneViewDelegate {
    func presentGreeting(with name: String) {
        nameLabel.text = name
    }
}
