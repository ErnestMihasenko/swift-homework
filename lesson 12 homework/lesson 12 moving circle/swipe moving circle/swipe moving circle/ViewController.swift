//
//  ViewController.swift
//  swipe moving circle
//
//  Created by Ernest Mihasenko on 12.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        circle.layer.masksToBounds = true
        circle.layer.cornerRadius = circle.frame.width / 2
        
        view.isUserInteractionEnabled = true
        
        handleSwipeUp()
        handleSwipeDown()
        handleSwipeLeft()
        handleSwipeRight()
    }
    
    private func handleSwipeUp() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeMoveCircleUp))
      
        view.addGestureRecognizer(swipeGesture)
    
        swipeGesture.direction = .up

    }
    
    private func handleSwipeDown() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeMoveCircleDown))
      
        view.addGestureRecognizer(swipeGesture)
    
        swipeGesture.direction = .down
      
    }
    
    private func handleSwipeLeft() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeMoveCircleLeft))
      
        view.addGestureRecognizer(swipeGesture)
    
        swipeGesture.direction = .left

    }
    
    private func handleSwipeRight() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeMoveCircleRight))
      
        view.addGestureRecognizer(swipeGesture)
    
        swipeGesture.direction = .right
      
    }
    
    @objc private func swipeMoveCircleUp(gesture: UISwipeGestureRecognizer) {
        if circle.frame.minY > 0 {
        circle.layer.position.y -= 15
        }
    }
    
    @objc private func swipeMoveCircleDown(gesture: UISwipeGestureRecognizer) {
        if circle.frame.maxY < view.bounds.maxY {
            circle.layer.position.y += 15
        }
    }
    
    @objc private func swipeMoveCircleLeft(gesture: UISwipeGestureRecognizer) {
        if circle.frame.minX > 0 {
            circle.layer.position.x -= 15
        }
    }
    
    @objc private func swipeMoveCircleRight(gesture: UISwipeGestureRecognizer) {
        if circle.frame.maxX < view.bounds.maxX {
            circle.layer.position.x += 15
        }
    }

}

