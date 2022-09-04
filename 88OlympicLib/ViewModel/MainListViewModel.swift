//
//  MainListViewModel.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation

class MainListViewModel {
    
    var repo = ContentRepository()
    
    func list(){
        repo.list()
    }
    
}
