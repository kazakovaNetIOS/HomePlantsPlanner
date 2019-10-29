//
//  PlantsViewController.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantsViewController: UITableViewController {
    
    var viewModel: PlantsTableViewViewModelType?
}

//MARK: - LifeCycle
/***************************************************************/

extension PlantsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = PlantsViewModel()
    }
}

//MARK: - TableViewDataSource
/***************************************************************/

extension PlantsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "plantCell", for: indexPath) as? PlantTableViewCell
        
        guard let tableViewCell = cell,
            let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        
        return tableViewCell
    }
}

//MARK: - StoryboardInstantiable
/***************************************************************/

//extension PlantsViewController: StoryboardInstantiable { }
