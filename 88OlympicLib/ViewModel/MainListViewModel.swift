//
//  MainListViewModel.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation

class MainListViewModel {
    
    var repo = ContentRepository()
    
    var content : [RecordDetailContent]? = nil
    
    func list(){
        repo.list {
            print(" main list vm == ", $0?.item)
            self.content = $0?.item
        }
    }
    
}
