//
//  Mediator.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

protocol Mediator {
    var colleagues: [Colleague] { get set }
    
    func register(colleagues: [Colleague])
    func send(message: String, sender: Colleague)
}
