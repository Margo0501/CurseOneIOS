//
//  SceneDelegate.swift
//  HomeWork_10
//
//  Created by Маргарита Куратник on 12.05.25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        let tabBarController = UITabBarController()
        
        
        let firstTab = createFirstTab()
        let secondTab = createSecondTab()
        let thirdTab = createThirdTab()
        
        tabBarController.viewControllers = [firstTab, secondTab, thirdTab]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        
    }
    
    
    func createFirstTab() -> UIViewController {
        
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        return navigationController
    }
    
    func createSecondTab() -> UIViewController {
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        return secondViewController
    }
    
    
    func createThirdTab() -> UIViewController {
        let thirdViewController = ThirdViewController(message: "Привет из третьей вкладки!")
        thirdViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        return thirdViewController
    }
}







