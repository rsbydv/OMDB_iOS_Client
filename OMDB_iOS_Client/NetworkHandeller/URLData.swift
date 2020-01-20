//
//  URLData.swift
//  OMDB_iOS_Client
//
//  Created by Rishabh Yadav on 19/01/20.
//  Copyright © 2020 Rishabh Yadav. All rights reserved.
//

import Foundation
protocol URLData {
    var baseURL: URL { get }
    var path: String { get }
}
