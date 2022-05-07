//
//  Model.swift
//  MyWeatherApp
//
//  Created by emil kurbanov on 06.05.2022.
//

import Foundation
struct Weather: Decodable {
    var main: Main?
    enum CodingKeys: String, CodingKey {
        case main
    }
}

struct Main:Decodable {
    var temp: String
    enum CodingKeys: String, CodingKey {
    case temp
    }
}
