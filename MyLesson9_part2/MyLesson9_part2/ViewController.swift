//
//  ViewController.swift
//  MyLesson9_part2
//
//  Created by Маргарита Куратник on 3.04.25.
//

import UIKit

class MoveCircleViewController: UIViewController {
    var circleView: UIView!
    let moveDistance: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircle()
        setupButtons()
        
    }
    
    func setupCircle() {
        circleView = UIView()
        circleView.backgroundColor = .blue
        circleView.layer.cornerRadius = 25
        circleView.frame = CGRect(x: (view.bounds.width / 2) - 50, y: (view.bounds.height / 2) - 50, width: 50, height: 50)
        view.addSubview(circleView)
    }
    
    func setupButtons() {
        let upButton = createButton(title: "UP", action: #selector(moveUp))
        let downButton = createButton(title: "DOWN", action: #selector(moveDown))
        let leftButton = createButton(title: "LEFT", action: #selector(moveLeft))
        let rightButton = createButton(title: "RIGHT", action: #selector(moveRight))
        
        upButton.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        downButton.frame = CGRect(x: 100, y: 150, width: 80, height: 40)
        leftButton.frame = CGRect(x: 100, y: 200, width: 80, height: 40)
        rightButton.frame = CGRect(x: 100, y: 250, width: 80, height: 40)
        
        view.addSubview(upButton)
        view.addSubview(downButton)
        view.addSubview(leftButton)
        view.addSubview(rightButton)
    }
    func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    @objc func moveUp() {
            let newY = max(circleView.frame.origin.y - moveDistance, 0)
            circleView.frame.origin.y = newY
        }

        @objc func moveDown() {


            let newY = min(circleView.frame.origin.y + moveDistance, view.bounds.height - circleView.frame.height)
            circleView.frame.origin.y = newY
        }

        @objc func moveLeft() {
            let newX = max(circleView.frame.origin.x - moveDistance, 0)
            circleView.frame.origin.x = newX
        }

        @objc func moveRight() {
            let newX = min(circleView.frame.origin.x + moveDistance, view.bounds.width - circleView.frame.width)
            circleView.frame.origin.x = newX
        }
    }


#Preview(traits: .portrait)
{MoveCircleViewController()}
