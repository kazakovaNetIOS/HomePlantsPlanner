//
//  PlantDetailViewController.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 30.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

class PlantDetailViewController: UIViewController {

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    var viewModel: PlantDetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        typeLabel.text = viewModel.type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.height.bind { [unowned self] in
            guard let double = $0 else { return }
            self.heightLabel.text = "\(double)"
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.height.value = 55
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
}
