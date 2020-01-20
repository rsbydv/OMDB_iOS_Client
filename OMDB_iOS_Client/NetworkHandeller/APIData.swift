//
//  APIData.swift
//  OMDB_iOS_Client
//
//  Created by Rishabh Yadav on 19/01/20.
//  Copyright © 2020 Rishabh Yadav. All rights reserved.
//

import Foundation
enum APIData{
    case repository(page:Int)
}
//MARK:- Base URL Declairations
extension APIData:URLData{
    var baseURL: URL {
        return URL(string: "http://www.omdbapi.com")!
    }
    var path: String {
        switch self {
        case .repository(let page):
            return "/?s=Batman&page=\(page)&apikey=eeefc96f"
            
        }
        
    }
}
