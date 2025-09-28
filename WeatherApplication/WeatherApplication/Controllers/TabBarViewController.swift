//
//  TabBarViewController.swift
//  WeatherApplication
//
//  Created by Маргарита Куратник on 15.09.25.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setTabs()
        
        tabBar.tintColor = .white
       }
    func setTabs() {
        let weatherVC = WeatherTodayViewController()
        weatherVC.tabBarItem.title = "Погода сегодня"
        weatherVC.tabBarItem.image = UIImage(systemName: "cloud.sun")
        weatherVC.tabBarItem.selectedImage = UIImage(systemName: "cloud.sun.fill")
       
        let mapVC = WeatherMapViewController()
        mapVC.tabBarItem.title = "Карта"
        mapVC.tabBarItem.image = UIImage(systemName: "globe")
        mapVC.tabBarItem.selectedImage = UIImage(systemName: "globe.fill")
        
        let settingsVC = SettingsViewController()
        settingsVC.tabBarItem.title = "Настройки"
        settingsVC.tabBarItem.image = UIImage(systemName: "gear")
        settingsVC.tabBarItem.selectedImage = UIImage(systemName: "gear.fiil")
        
        
        setViewControllers([weatherVC,mapVC,settingsVC], animated: true)
    }
}
