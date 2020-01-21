//
//  OMDBDataModel.swift
//  OMDB_iOS_Client
//
//  Created by Rishabh Yadav on 19/01/20.
//  Copyright © 2020 Rishabh Yadav. All rights reserved.
//

import Foundation

// MARK: - OMDBDataModel
struct OMDBDataModel: Codable {
    let search: [Search]?
    let totalResults, response: String?

    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}


// MARK: - Search
struct Search: Codable {
    let title, year: String?
    let type: String?
    let poster: String?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case type = "Type"
        case poster = "Poster"
    }
    
}

enum TypeEnum: String, Codable {
    case movie = "movie"
    case series = "series"
}


//MARK:- Calculate Year from current Date
extension Date {

    static var dateFormat = "yyyy"

    func yearAgoSinceDate() -> String? {
        let calendar = NSCalendar.current
        let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
        let now = Date()
        let earliest = now < self ? now : self
        let latest = (earliest == now) ? self : now
        let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
        if (components.year! >= 2) {
            return "\(components.year!) years ago"
        } else if (components.year! >= 1){
            return "Last year"
        }
        return nil
    }
}
