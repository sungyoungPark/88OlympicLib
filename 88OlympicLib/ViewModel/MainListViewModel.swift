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
    
    var contentUpdate: () -> Void = { }
    
    func contentCount() -> Int {
        return content?.count ?? 0
    }
    
    func content(at index : Int) -> RecordDetailContent?{
        return content?[index]
    }
    
    func list(){
        repo.list {
            self.content = $0?.item
            self.contentUpdate()
        }
    }
    
}
