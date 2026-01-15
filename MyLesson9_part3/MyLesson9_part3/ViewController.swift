//
//  ViewController.swift
//  MyLesson9_part3
//
//  Created by Маргарита Куратник on 6.04.25.
//

import UIKit

class SquareFillerViewController: UIViewController {
    let squareSize: CGFloat = 100.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    func setupButton() {
        let fillButton = UIButton(type: .system)
        fillButton.setTitle("Fill", for: .normal)
        fillButton.setTitleColor(.black, for: .normal)
        fillButton.backgroundColor = .blue
        fillButton.addTarget(self, action: #selector(fillScreenWithSquares), for: .touchUpInside)
        fillButton.layer.borderColor = UIColor.black.cgColor
        fillButton.layer.borderWidth = 1
        fillButton.layer.cornerRadius = 25
        
        fillButton.frame = CGRect(x: (view.bounds.width - 100) / 2, y: 50, width: 100, height: 40)
        fillButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fillButton)
        
        NSLayoutConstraint.activate([  fillButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                       fillButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                       fillButton.widthAnchor.constraint(equalToConstant: 100),
                                       fillButton.heightAnchor.constraint(equalToConstant: 50)
                                       
                                    ])
    }
    @objc func fillScreenWithSquares() {
        for y in stride(from: 0, to: view.bounds.height, by: squareSize){
            for x in stride(from: 0,to: view.bounds.width, by: squareSize){
                let square = UIView(frame: CGRect(x: x, y: y, width: squareSize, height: squareSize))
                square.backgroundColor = .random()
                view.addSubview(square)
            }
        }
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1.0)
    }
}

#Preview(traits: .portrait)
{SquareFillerViewController()}

