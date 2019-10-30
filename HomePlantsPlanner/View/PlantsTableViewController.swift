//
//  PlantsViewController.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantsTableViewController: UITableViewController {
    
    var viewModel: PlantsTableViewViewModelType?
}

//MARK: - LifeCycle
/***************************************************************/

extension PlantsTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = PlantsViewModel()
    }
}

//MARK: - TableViewDataSource
/***************************************************************/

extension PlantsTableViewController {
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

//MARK: - TableViewDelegate
/***************************************************************/

extension PlantsTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.selectRow(atIndexPath: indexPath)
        performSegue(withIdentifier: "plantDetailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier,
            let viewModel = viewModel else { return }
        
        if identifier == "plantDetailSegue",
            let dvc = segue.destination as? PlantDetailViewController {
            dvc.viewModel = viewModel.viewModelForSelectedRow()
        }
    }
}


//MARK: - StoryboardInstantiable
/***************************************************************/

//extension PlantsViewController: StoryboardInstantiable { }
