//
//  AppDelegate.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var coordinator: MainCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController()
        
        //코디네이터를 만들어서 뷰와 뷰사이의 이동 역할을 담당
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()
        
        //앱의 루트 뷰컨트롤러를 네비게이션 컨트롤러로 설정
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        
        return true
    }

   

}

