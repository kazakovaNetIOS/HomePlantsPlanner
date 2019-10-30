//
//  PlantDetailViewController.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 30.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantDetailViewController: UIViewController {

    @IBOutlet weak var typeLabel: UILabel!
    var viewModel: PlantDetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        typeLabel.text = viewModel.type
    }
}
