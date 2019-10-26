//
//  PlantsViewModel.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class PlantViewModel {
    
    private var plant: Plant
    
    var type: String {
        return plant.type
    }
    
    init(plant: Plant) {
        self.plant = plant
    }
}
