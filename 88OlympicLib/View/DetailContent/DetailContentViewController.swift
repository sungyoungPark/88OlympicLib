//
//  DetailContentViewController.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/09/25.
//

import UIKit

class DetailContentViewController: UIViewController, ViewModelBindableType {

    weak var coordinator: MainCoordinator?
    var viewModel : DetailContentViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .yellow

       
    }
    
    func bindViewModel() {
        
    }

}
