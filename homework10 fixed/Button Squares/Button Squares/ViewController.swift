//
//  ViewController.swift
//  Button Squares
//
//  Created by Ernest Mihasenko on 1.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var space: UIView!
    
    @IBOutlet weak var secondSquare: UILabel!
    
    @IBOutlet weak var firstSquare: UILabel!
    
    @IBOutlet weak var showSquaresButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        firstSquare.isHidden = true
        secondSquare.isHidden = true
    }

    @IBAction func pressButton(_ sender: UIButton) {
        firstSquare.isHidden = false
        secondSquare.isHidden = false
      
        repeat {
            firstSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.bounds.minX)..<Int(space.bounds.maxX - firstSquare.frame.width)), y: Int.random(in: Int(space.bounds.minY)..<Int(space.bounds.maxY - firstSquare.frame.height)))
            
            secondSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.bounds.minX)..<Int(space.bounds.maxX - secondSquare.frame.width)), y: Int.random(in: Int(space.bounds.minY)..<Int(space.bounds.maxY - secondSquare.frame.height)))
        } while
        firstSquare.frame.intersects(secondSquare.frame)
    }
}

