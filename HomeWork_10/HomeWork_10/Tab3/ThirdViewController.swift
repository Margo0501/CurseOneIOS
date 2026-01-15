//
//  ThirdViewController.swift
//  HomeWork_10
//
//  Created by Маргарита Куратник on 12.05.25.
//

import UIKit


class ThirdViewController: UIViewController {
    
    var message: String
    
    init(message: String) {
        self.message = message
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        
        let messageLabel = UILabel()
        messageLabel.text = message
        messageLabel.textAlignment = .center
        messageLabel.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 50)
        view.addSubview(messageLabel)
    }
}
