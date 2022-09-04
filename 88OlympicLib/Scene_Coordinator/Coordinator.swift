//
//  CoordinatorProtocol.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
