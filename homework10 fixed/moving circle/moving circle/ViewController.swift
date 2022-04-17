//
//  ViewController.swift
//  moving circle
//
//  Created by Ernest Mihasenko on 2.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var circleSpace: UIView!
    
    @IBOutlet weak var circle: UILabel!
    
    @IBOutlet weak var upButton: UIButton!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var downtButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle.layer.cornerRadius = circle.bounds.size.width/2
        circle.layer.borderWidth = 50
    }
    
    @IBAction func upButtonPress(_ sender: Any) {
        if circle.frame.minY > 0 {
            circle.layer.position.y -= 5
        }
    }
    
    @IBAction func leftButtonPress(_ sender: Any) {
        if circle.frame.minX > 0 {
            circle.layer.position.x -= 5
        }
    }
    
    @IBAction func downButtonPress(_ sender: Any) {
        if circle.frame.minY < circleSpace.bounds.maxY - circle.frame.height {
            circle.layer.position.y += 5
        }
    }
    
    @IBAction func rightButtonPress(_ sender: Any) {
        if circle.frame.origin.x < circleSpace.bounds.maxX - circle.frame.width {
            circle.layer.position.x += 5
        }
    }
    
}

