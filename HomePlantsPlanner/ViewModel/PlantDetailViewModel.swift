//
//  PlantDetailViewModel.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 30.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class PlantDetailViewModel {
    
    private var plant: Plant
    
    init(plant: Plant) {
        self.plant = plant
    }
}

//MARK: - PlantDetailViewModelType
/***************************************************************/

extension PlantDetailViewModel: PlantDetailViewModelType {
    var type: String {
        return plant.type
    }
}
