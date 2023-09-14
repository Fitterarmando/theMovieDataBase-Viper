//
//  Mapper.swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 13/09/23.
//

import Foundation

struct Mapper {
    func map(entity: PopularMovieEntity) -> ViewModel {
        ViewModel(title: entity.title,
                  overview: entity.overview,
                  imageURL: URL(string: "https://image.tmdb.org/t/p/w200" + entity.imageUrl))
    }
}
