//
//  SecondViewController.swift
//  HomeWork_10
//
//  Created by Маргарита Куратник on 12.05.25.
//
import UIKit

class SecondViewController: UIViewController {
    
    private let presentButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupButton()
    }
    
    private func setupButton() {
        presentButton.setTitle("Открыть новый экран", for: .normal)
        presentButton.setTitleColor(.white, for: .normal)
        presentButton.addTarget(self, action: #selector(presentNewScreen), for: .touchUpInside)
        presentButton.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        view.addSubview(presentButton)
    }
    
    @objc private func presentNewScreen() {
        let newScreenVC = NewScreenViewController()
        newScreenVC.modalPresentationStyle = .fullScreen
        present(newScreenVC, animated: true, completion: nil)
    }
}


class NewScreenViewController: UIViewController {
    
    private let dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        dismissButton.setTitle("Назад", for: .normal)
        dismissButton.setTitleColor(.white, for: .normal)
        dismissButton.addTarget(self, action: #selector(dismissScreen), for: .touchUpInside)
        dismissButton.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        view.addSubview(dismissButton)
    }
    
    @objc private func dismissScreen() {
        dismiss(animated: true, completion: nil)
    }
}
