//
//  MainTabBarController.swift
//  Mediator
//
//  Created by Italo Boss on 11/04/19.
//  Copyright © 2019 Sofa Away. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        let firstVC = ViewController()
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let c1 = ScreenColleague(mediator: ScreenMediator.shared, viewController: firstVC)
        firstVC.action = { [unowned c1] msg in
            c1.send(message: msg)
        }
        
        let secondVC = ViewController()
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        let c2 = ScreenColleague(mediator: ScreenMediator.shared, viewController: secondVC)
        secondVC.action = { [unowned c2] msg in
            c2.send(message: msg)
        }
        
        let thirdVC = ViewController()
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 2)
        let c3 = ScreenColleague(mediator: ScreenMediator.shared, viewController: thirdVC)
        thirdVC.action = { [unowned c3] msg in
            c3.send(message: msg)
        }
        
        ScreenMediator.shared.register(colleagues: [c1, c2, c3])
        viewControllers = [firstVC, secondVC, thirdVC]
    }
    
}
