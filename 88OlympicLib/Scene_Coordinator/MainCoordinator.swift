//
//  Coordinator.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import UIKit

//뷰와 뷰의 이동을 관리해주는 코디네이터
class MainCoordinator: NSObject, Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        var vc = MainListViewController()
        let vm = MainListViewModel()
        vc.coordinator = self
        
        vc.bind(viewModel: vm)
        navigationController.pushViewController(vc, animated: false)
    }
    
    /*
    func goNewsPage(url : URL){
        let vc = ShowNewsViewController()
        vc.coordinator = self
        vc.viewModel.url = url
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goFullImagePage(image : UIImage){
        let vc = FullImageViewController()
        vc.coordinator = self
        vc.image = image
        
        navigationController.pushViewController(vc, animated: true)
    }
    */
    
}
