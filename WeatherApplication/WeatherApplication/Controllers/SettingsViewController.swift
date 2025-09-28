//
//  SearchViewController.swift
//  WeatherApplication
//
//  Created by Маргарита Куратник on 15.09.25.
//

import UIKit
class SettingsViewController: UIViewController {
    
//    let setttings: [String] =
    
   override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
         gradient.colors = [UIColor.systemMint.cgColor, UIColor.systemBlue.cgColor]
         gradient.startPoint = .init(x: 0, y: 0)
         gradient.endPoint = .init(x: 1, y: 1)
         
         view.layer.addSublayer(gradient)
    }
}
