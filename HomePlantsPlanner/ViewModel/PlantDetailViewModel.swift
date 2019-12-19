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
    
    var height: Box<Double?> = Box(nil)
    
    init(plant: Plant) {
        self.plant = plant
        self.height.value = plant.height
    }
}

//MARK: - PlantDetailViewModelType
/***************************************************************/

extension PlantDetailViewModel: PlantDetailViewModelType {
    var type: String {
        return plant.type
    }
}
