//
//  PlantsViewModel.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class PlantsViewModel {
    
    var plants: [Plant]
    var count: Int {
        return plants.count
    }
    
    init() {
        self.plants = [
            Plant(type: "1"),
            Plant(type: "2"),
            Plant(type: "3")]
    }
}

//MARK: - PlantsTableViewModelType
/***************************************************************/

extension PlantsViewModel: PlantsTableViewViewModelType {
    func cellViewModel(forIndexPath indexPath: IndexPath) -> PlantsTableViewCellViewModelType? {
        let plant = plants[indexPath.row]
        return PlantTableViewCellViewModel(plant: plant)
    }
    
    func numberOfRows() -> Int {
        return plants.count
    }   
}
