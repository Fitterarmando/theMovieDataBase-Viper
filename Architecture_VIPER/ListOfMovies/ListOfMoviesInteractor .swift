//
//  ListOfMovieInteractor .swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 07/09/23.
//

import Foundation

protocol ListOfMoviesInteractable: AnyObject {
    func getListOfMovies() async -> PopularMovieResponseEntity 
}

    class ListOfMoviesInteractor: ListOfMoviesInteractable {
    //Creacion del metodo
    func getListOfMovies() async -> PopularMovieResponseEntity {
        //Realizar petiticion http
        //Al utlizar el endpoint tenemos que pasarle el ApiKey como parametro
        let url = URL(string:"https://api.themoviedb.org/3/movie/popular?api_key=e51f700343d24dc11ef7cc41f06d7b2d")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
    
}
 
class ListOfMoviesInteractorMock: ListOfMoviesInteractable {
    func getListOfMovies() async -> PopularMovieResponseEntity{
        return PopularMovieResponseEntity(results: [
            .init(id: 0, title: "SwiftBeta Suscríbete", overview: "Aprende Swift", imageUrl: "", votes: 10),
            .init(id: 1, title: "SwiftBeta Suscríbete", overview: "Aprende SwiftUI", imageUrl: "", votes: 10),
            .init(id: 2, title: "SwiftBeta Suscríbete", overview: "Aprende Xcode", imageUrl: "", votes: 10),
            .init(id: 3, title: "SwiftBeta Suscríbete", overview: "Aprende UIKit", imageUrl: "", votes: 10),
            .init(id: 4, title: "SwiftBeta Suscríbete", overview: "Aprende Firebase", imageUrl: "", votes: 10),
            .init(id: 5, title: "SwiftBeta Suscríbete", overview: "Aprende Combine", imageUrl: "", votes: 10),
        ])
    }
}
