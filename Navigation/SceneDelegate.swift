//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Вячеслав Студеникин on 02.12.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var tabBarNavigationController = TabBarController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        //создал window (окно) и инициализировал в нем windowScene
        let window = UIWindow(windowScene: windowScene)
        //Прописал ему руткнтроллер (стартовый)
        window.rootViewController = tabBarNavigationController
        //Сделали окно видимым и ключевым
        window.makeKeyAndVisible()
        self.window = window

    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}

