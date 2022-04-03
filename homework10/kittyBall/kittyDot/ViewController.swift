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

    @IBAction func Balltap(_ sender: Any) {
        
        ball.layer.position = CGPoint(x: Int.random(in: 45..<Int(view.frame.maxX)), y: Int.random(in: 45..<Int(view.frame.maxY)))
    }
    
}

