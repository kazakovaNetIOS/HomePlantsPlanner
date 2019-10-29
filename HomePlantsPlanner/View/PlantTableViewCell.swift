//
//  PlantTableViewCell.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 27.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantTableViewCell: UITableViewCell {

    @IBOutlet weak var typeLabel: UILabel!
    
    weak var viewModel: PlantsTableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            typeLabel.text = viewModel.type
        }
    }
}
