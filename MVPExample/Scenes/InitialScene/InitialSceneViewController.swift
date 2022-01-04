//
//  InitialSceneViewController.swift
//  MVPExample
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

class InitialSceneViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var proceedButton: UIButton!
    
    // MARK: - Presenter
    private let presenter: InitialSceneOutput
    
    // MARK: - Initialization
    init(presenter: InitialSceneOutput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Actions
    @IBAction func proceedButtonTapped(_ sender: Any) {
        
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension InitialSceneViewController: InitialSceneInput {
}
