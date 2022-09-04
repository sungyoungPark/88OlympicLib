//
//  HttpService.swift
//  88OlympicLib
//
//  Created by 박성영 on 2022/08/28.
//

import Foundation
import Alamofire

class HttpService {
    
    private let baseURL : String
    
    init(baseURL: String) {
        self.baseURL = baseURL
    }
    
    func getJson(params: [String: Any], completed: @escaping (Any?) -> Void) {
        let queryParams = params.map { k, v in "\(k)=\(v)" }.joined(separator: "&")
        
        var fullPath = baseURL
        
        if !queryParams.isEmpty {
            fullPath += "?" + queryParams
        }
        print("get json ===", fullPath)
        
        let headers: HTTPHeaders = [
                    "Content-Type":"application/json",
                    "Accept": "application/json"
                ]
        
        AF.request(fullPath, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseData { response in
            
            switch response.result {
            case .success(let value):
                let str = String(data: value, encoding: .utf8)
                print(str)
                completed(str)
            case .failure(let error):
                completed(nil)
             
            }
        }
    }
    
}
