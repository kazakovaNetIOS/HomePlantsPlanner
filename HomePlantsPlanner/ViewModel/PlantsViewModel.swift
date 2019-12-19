//
//  PlantsViewModel.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class PlantsViewModel {
    
    private var selectedIndexPath: IndexPath?
    
    var plants: [Plant] = [
        Plant(type: "1", height: 1.3),
        Plant(type: "2", height: 0.3),
        Plant(type: "3", height: 0.7)]
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
    
    func viewModelForSelectedRow() -> PlantDetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return PlantDetailViewModel(plant: plants[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
