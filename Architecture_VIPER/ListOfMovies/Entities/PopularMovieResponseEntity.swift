//
//  PopularMovieResponseEntity.swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 07/09/23.
//

import Foundation

// Con estos dos metodos ya podemos realizar el metodo de nuestro interactor.
struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMovieEntity]
}
