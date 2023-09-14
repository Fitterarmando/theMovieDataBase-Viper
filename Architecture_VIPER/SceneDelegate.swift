//
//  SceneDelegate.swift
//  Architecture_VIPER
//
//  Created by Juan Armando Frías Ramírez on 07/09/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var listOfMoviesRouter = ListOfMoviesRouter()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        listOfMoviesRouter.showListOfMovies(window: window)
    }
}

