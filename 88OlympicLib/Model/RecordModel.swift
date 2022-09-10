//
//  RecordModel.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation

struct RecordModel : Decodable {
    
//    var title : String                  //자원의 명칭
//    var alternativeTitle : String       //대체 (기존 = alternativeTitle(대체) + ' ' + subTitle(부제))
//    var temporalCoverage : String       //해당시간대 (기존 = period(기간) + ' ' + time(시간)), 경기 시간
    
    var item : [RecordDetailContent]
    
    enum CodingKeys: CodingKey {
       
        // 중첩된 JSON Object에 접근하기 위한 키
        case response
        case body
        case items
        case item
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let responseContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .response)
        
        // address 키 안의 JSON Object에 대한 컨테이너를 가져온다.
        let bodyContainer = try responseContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .body)
        
        print("body container ===", bodyContainer)
        
        let itemsContainer = try bodyContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .items)
        
        self.item = try itemsContainer.decode([RecordDetailContent].self, forKey: .item)
//        self.title = (try? item.decode(String.self, forKey: .title)) ?? ""
//        self.alternativeTitle = (try? item.decode(String.self, forKey: .alternativeTitle)) ?? ""
//        self.temporalCoverage = (try? item.decode(String.self, forKey: .temporalCoverage)) ?? ""
    }
    
}

struct RecordDetailContent : Decodable {
    var title : String                  //자원의 명칭
    var alternativeTitle : String       //대체 (기존 = alternativeTitle(대체) + ' ' + subTitle(부제))
    var temporalCoverage : String       //해당시간대 (기존 = period(기간) + ' ' + time(시간)), 경기 시간
    var url : String
    
    enum CodingKeys: CodingKey {
       
        // 중첩된 JSON Object에 접근하기 위한 키
        case title
        case alternativeTitle
        case temporalCoverage
        case url 
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.title = (try? container.decode(String.self, forKey: .title)) ?? ""
        self.alternativeTitle = (try? container.decode(String.self, forKey: .alternativeTitle)) ?? ""
        self.temporalCoverage = (try? container.decode(String.self, forKey: .temporalCoverage)) ?? ""
        self.url = (try? container.decode(String.self, forKey: .url)) ?? ""
    }
}
