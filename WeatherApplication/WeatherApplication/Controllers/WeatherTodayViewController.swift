//
//  WeatherTodayViewController.swift
//  WeatherApplication
//
//  Created by Маргарита Куратник on 15.09.25.
//
import UIKit

class WeatherTodayViewController: UIViewController {
    
   
    
    let customView = WeatherTodayView()
    override func loadView() {
    view = customView
}
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
//        setupUI()
    }
}
        

//    #Preview(traits: .portrait) {ViewController()}
