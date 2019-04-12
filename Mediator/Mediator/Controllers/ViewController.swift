//
//  ViewController.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var textField: UITextField?
    var action: ((String) -> Void)?
    
    override func loadView() {
        super.loadView()
        setupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupView() {
        view.backgroundColor = .white
        setupComponents()
    }
    
    func setupComponents() {
        
        let textField = UITextField()
        view.addSubview(textField)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        self.textField = textField
        
        let sendButton = UIButton()
        view.addSubview(sendButton)
        sendButton.setTitle("Send message", for: .normal)
        sendButton.backgroundColor = .black
        sendButton.layer.cornerRadius = 10
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        sendButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        sendButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        sendButton.centerYAnchor.constraint(greaterThanOrEqualTo: view.centerYAnchor, constant: 60).isActive = true
        sendButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sendButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        if let message = textField?.text, let act = action {
            act(message)
        }
    }

    func updateMessage(_ message: String) {
        DispatchQueue.main.async {
            self.textField?.text = message
        }
    }
    
}

