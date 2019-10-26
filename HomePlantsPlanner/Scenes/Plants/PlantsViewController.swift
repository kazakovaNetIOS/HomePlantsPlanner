//
//  PlantsViewController.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantsViewController: UIViewController {
    
    @IBOutlet weak var typeLabel: UILabel!
    
    var viewModel: PlantViewModel! {
        didSet {
            typeLabel.text = viewModel.type
        }
    }
}

//MARK: - LifeCycle
/***************************************************************/

extension PlantsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

//MARK: - StoryboardInstantiable
/***************************************************************/

extension PlantsViewController: StoryboardInstantiable { }
