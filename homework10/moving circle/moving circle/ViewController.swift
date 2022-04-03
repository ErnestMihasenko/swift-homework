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
        // Do any additional setup after loading the view.
        circle.layer.cornerRadius = circle.bounds.size.width/2
        circle.layer.borderWidth = 50
    }

    @IBAction func upButtonPress(_ sender: Any) {
        if circle.layer.position.y > circleSpace.frame.minY {
        circle.layer.position.y -= 5
        }
    }
    @IBAction func leftButtonPress(_ sender: Any) {
        if circle.layer.position.x > circleSpace.frame.minX {
        circle.layer.position.x -= 5
        }
    }
    @IBAction func downButtonPress(_ sender: Any) {
        if circle.layer.position.y < circleSpace.frame.maxY - 100 {
        circle.layer.position.y += 5
        }
    }
    
    @IBAction func rightButtonPress(_ sender: Any) {
        if circle.layer.position.x < circleSpace.frame.maxX - 90 {
        circle.layer.position.x += 5
        }
    }
    
}

