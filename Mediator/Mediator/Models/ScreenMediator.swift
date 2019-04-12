//
//  ScreenMediator.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

class ScreenMediator: Mediator {
    var colleagues: [Colleague] = []
    
    static let shared = ScreenMediator()
    
    func register(colleagues: [Colleague]) {
        self.colleagues.append(contentsOf: colleagues)
    }
    
    func send(message: String, sender: Colleague) {
        for colleague in colleagues {
            if colleague.hash != sender.hash {
                colleague.receive(message: message)
            }
        }
    }
    
}
