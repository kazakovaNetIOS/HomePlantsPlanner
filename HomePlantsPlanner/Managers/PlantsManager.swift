//
//  PlantsManager.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation
import CoreData

class PlantsManager {
    
    private var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
}

//MARK: - Manager
/***************************************************************/

extension PlantsManager: Manager {
    func load() {
        print("load plants from db")
    }
}
