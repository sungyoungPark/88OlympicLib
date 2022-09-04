//
//  ViewController.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import UIKit
import SnapKit

class MainListViewController: UIViewController, ViewModelBindableType {
    
    weak var coordinator: MainCoordinator?
    var viewModel : MainListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MainListViewModel()
        
        viewModel.list()
        
        self.view.backgroundColor = .brown
    }

    func bindViewModel() {
    
    }
}

