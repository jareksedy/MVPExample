//
//  InitialSceneViewController.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

// MARK: - Protocol
protocol InitialSceneViewDelegate: NSObjectProtocol {
    func proceedToGreetingScene(with name: String)
}

// MARK: - Implementation
extension InitialSceneViewController: InitialSceneViewDelegate {
    func proceedToGreetingScene(with name: String) {
        let greetingSceneViewController = self.storyboard?.instantiateViewController(withIdentifier: "GreetingScene") as! GreetingSceneViewController
        greetingSceneViewController.name = name
        self.present(greetingSceneViewController, animated: true, completion: nil)
    }
}

// MARK: - View
class InitialSceneViewController: UIViewController {
    let presenter = InitialScenePresenter()
    
    // MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var proceedButton: UIButton!

    // MARK: - Actions
    @IBAction func proceedButtonTapped(_ sender: Any) {
        presenter.didInputName(name: nameTextField?.text)
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDelegate = self
    }
}
