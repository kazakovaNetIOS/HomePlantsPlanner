//
//  PlantTableViewCellViewModel.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 27.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class PlantTableViewCellViewModel {
    
    private var plant: Plant
    
    init(plant: Plant) {
        self.plant = plant
    }
}

//MARK: - PlantsTableViewCellViewModelType
/***************************************************************/

extension PlantTableViewCellViewModel: PlantsTableViewCellViewModelType {
    var type: String {
        return plant.type
    }
}
