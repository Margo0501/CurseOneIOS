//
//  ViewController.swift
//  MyLesson9(part1)
//
//  Created by Маргарита Куратник on 28.03.25.
//

import UIKit

class CatToyViewController: UIViewController {
    var circleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircle()
        moveCircle()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(circleTapped))
        
        view.addGestureRecognizer(tapGesture) }
    func setupCircle() {
        circleView = UIView()
        circleView.backgroundColor = .random()
        circleView.layer.cornerRadius = 25
        circleView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.addSubview(circleView)
        
    }
    func moveCircle() {
        let maxX = Int(view.bounds.width) - 50
        let maxY = Int(view.bounds.height) - 50
        let randomX = Int.random(in: 0...maxX)
        let randomY = Int.random(in: 0...maxY)
        circleView.center = CGPoint(x: randomX + 25, y: randomY + 25)
    }
    
    @objc func circleTapped() {
        moveCircle()
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:
                        CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue:
                        CGFloat.random(in: 0...1),
                       alpha: 1.0)
        
    }
}


#Preview(traits: .portrait)
{CatToyViewController()}
