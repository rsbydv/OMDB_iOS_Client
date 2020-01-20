//
//  Response.swift
//  OMDB_iOS_Client
//
//  Created by Rishabh Yadav on 20/01/20.
//  Copyright © 2020 Rishabh Yadav. All rights reserved.
//

import Foundation
struct  Response {
    fileprivate var data:Data
    init(data:Data) {
        self.data = data
    }
}
extension Response{
    public func decode<T: Codable>(_ type: T.Type) -> T? {
        let jsonDecoder = JSONDecoder()
        do {
            let response = try jsonDecoder.decode(T.self, from: data)
            return response
        } catch  {
            return nil
        }
    }
}
