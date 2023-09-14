//
//  PopularMovieEntity.swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 07/09/23.
//

import Foundation


struct PopularMovieEntity: Decodable {
    var id: Int
    var title: String
    var overview: String
    var imageUrl: String
    var votes: Double
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case imageUrl = "poster_path"
        case votes = "vote_average"
    }
    
}

