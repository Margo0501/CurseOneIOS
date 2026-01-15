//
//  FirstViewController.swift
//  HomeWork_10
//
//  Created by Маргарита Куратник on 12.05.25.
//
import UIKit

class FirstViewController: UIViewController {
    
    private let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red 
        setupButton()
    }
    
    private func setupButton() {
        nextButton.setTitle("Следующий экран", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextButton.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        view.addSubview(nextButton)
    }
    
    @objc private func goToNextScreen() {
        let nextVC = GreenViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}


class GreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let nextButton = createNextButton()
        view.addSubview(nextButton)
    }
    
    private func createNextButton() -> UIButton {
        
        
        let button = UIButton(type: .system)
        button.setTitle("Следующий экран", for: .normal)
        button.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        return button
    }
    
    @objc private func goToNextScreen() {
        let nextVC = BlueViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}



class BlueViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let nextButton = createNextButton()
        view.addSubview(nextButton)
    }
    
    private func createNextButton() -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Следующий экран", for: .normal)
        button.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        return button
    }
    
    @objc private func goToNextScreen() {
        let nextVC = YellowViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

class YellowViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let backButton = UIButton(type: .system)
        backButton.setTitle("На первый экран", for: .normal)
        backButton.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        backButton.addTarget(self, action: #selector(goBackToFirstScreen), for: .touchUpInside)
        
        view.addSubview(backButton)
    }
    
    @objc private func goBackToFirstScreen() {
        navigationController?.popToRootViewController(animated: true)
    }
}
