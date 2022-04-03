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
        // Do any additional setup after loading the view.
        
        firstSquare.isHidden = true
        secondSquare.isHidden = true
    }

    @IBAction func pressButton(_ sender: UIButton) {
        firstSquare.isHidden = false
        secondSquare.isHidden = false
      
        firstSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.frame.minX)..<Int(space.frame.maxX - 90)), y: Int.random(in: Int(space.frame.minY)..<Int(space.frame.maxY - 90)))
     
       secondSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.frame.minX)..<Int(space.frame.maxX - 90)), y: Int.random(in: Int(space.frame.minY)..<Int(space.frame.maxY - 90)))
        
        repeat {
        firstSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.frame.minX)..<Int(space.frame.maxX - 90)), y: Int.random(in: Int(space.frame.minY)..<Int(space.frame.maxY - 90)))

        secondSquare.frame.origin = CGPoint(x: Int.random(in: Int(space.frame.minX)..<Int(space.frame.maxX - 90)), y: Int.random(in: Int(space.frame.minY)..<Int(space.frame.maxY - 90)))
        } while
        (Int(self.secondSquare.frame.midX) - Int(self.firstSquare.frame.midX)).magnitude < 90 || (Int(self.secondSquare.frame.midY) - Int(self.firstSquare.frame.midY)).magnitude < 90
    }
}

