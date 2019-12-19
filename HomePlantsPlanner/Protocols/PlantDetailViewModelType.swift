//
//  PlantDetailViewModelType.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 30.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

protocol PlantDetailViewModelType {
    var type: String { get }
    var height: Box<Double?> { get }
}
