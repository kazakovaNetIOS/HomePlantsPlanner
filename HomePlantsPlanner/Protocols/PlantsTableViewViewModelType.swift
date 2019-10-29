//
//  PlantsTableViewViewModelType.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 27.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

protocol PlantsTableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> PlantsTableViewCellViewModelType?
}
