//
//  PlantsCoordinator.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantsCoordinator {
    
    private let presenter: UINavigationController
    private var plantsViewController: UIViewController?
    private let plantsManager: Manager
    
    init(presenter: UINavigationController,
         plantsManager: Manager) {
        self.presenter = presenter
        self.plantsManager = plantsManager
    }
}

//MARK: - Coordinator
/***************************************************************/

extension PlantsCoordinator: Coordinator {
    func start() {
        let plantsViewController = PlantsViewController.instantiateViewController()
        self.plantsViewController = plantsViewController
        
        presenter.pushViewController(plantsViewController, animated: true)
        plantsManager.load()
    }
}
