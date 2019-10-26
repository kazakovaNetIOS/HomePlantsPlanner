//
//  AppCoordinator.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class AppCoordinator {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    
    private let plantsCoordinator: Coordinator
    
    init(window: UIWindow,
         plantsManager: Manager) {
        self.window = window
        rootViewController = UINavigationController()
        
        plantsCoordinator = PlantsCoordinator(presenter: rootViewController,
                                              plantsManager: plantsManager)
    }
}

//MARK: - Coordinator
/***************************************************************/

extension AppCoordinator: Coordinator {
    func start() {
        window.rootViewController = rootViewController
        plantsCoordinator.start()
        window.makeKeyAndVisible()
    }
}
