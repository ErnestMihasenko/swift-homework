//
//  ViewController.swift
//  kittyDot
//
//  Created by Ernest Mihasenko on 1.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        ball.layer.cornerRadius = 55
        ball.layer.borderWidth = 15
        // Do any additional setup after loading the view.
    }

    @IBAction func handleBallTap(_ sender: Any) {
        
        ball.frame.origin = CGPoint(x: Int.random(in: Int(view.frame.minX)..<Int(view.frame.maxX - ball.frame.width)), y: Int.random(in: Int(view.frame.minY)..<Int(view.frame.maxY - ball.frame.height)))
    }
    
}

