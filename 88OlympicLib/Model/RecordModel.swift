//
//  RecordModel.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation

struct RecordModel : Codable {
    
    let title : String                  //자원의 명칭
    let alternativeTitle : String       //대체 (기존 = alternativeTitle(대체) + ' ' + subTitle(부제))
    let temporalCoverage : String       //해당시간대 (기존 = period(기간) + ' ' + time(시간)), 경기 시간
    
}
