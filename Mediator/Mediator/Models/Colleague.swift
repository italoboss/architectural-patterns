//
//  Colleague.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

import Foundation

protocol Colleague: NSObjectProtocol {
    var mediator: Mediator { get }
    
    func send(message: String)
    func receive(message: String)
}
