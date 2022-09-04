//
//  ContentRepository.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation

class ContentRepository : NSObject {
 
    private let httpService = HttpService(baseURL: "http://api.kcisa.kr/openapi/service/rest/meta2018/getKSPD0720182")
    
    private let serviceKey = "f2351856-8976-4d74-b050-fa29a5ecea9d"
    
    func list() {
        httpService.getJson(params: ["serviceKey": serviceKey, "numOfRows" : 10, "pageNo" : 1 ]) {
            result in
            print("result===", result)
        }
    }
    
    func next() {
        
    }
    
    func detail() {
        
    }
}
