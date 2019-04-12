//
//  ScreenColleague.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

import Foundation

class ScreenColleague: NSObject, Colleague {

    var mediator: Mediator
    var viewController: ViewController
    
    init(mediator: Mediator, viewController: ViewController) {
        self.mediator = mediator
        self.viewController = viewController
    }
    
    func send(message: String) {
        mediator.send(message: message, sender: self)
    }
    
    func receive(message: String) {
        viewController.updateMessage(message)
    }
    
}
