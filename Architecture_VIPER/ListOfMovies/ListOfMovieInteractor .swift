//
//  ListOfMovieInteractor .swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 07/09/23.
//

import Foundation

// e51f700343d24dc11ef7cc41f06d7b2d
class ListOfMovieInteractor {
    //Creacion del metodo
    func getListOfMovies() async -> PopularMovieResponsableEntity {
        //Realizar petiticion http
        //Al utlizar el endpoint tenemos que pasarle el ApiKey como parametro
        let url = URL(string:"https://api.themoviedb.org/3/movie/popular?api_key=e51f700343d24dc11ef7cc41f06d7b2d")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponsableEntity.self, from: data)
    }
    
}
 
