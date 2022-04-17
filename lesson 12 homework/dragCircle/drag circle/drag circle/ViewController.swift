//
//  ViewController.swift
//  drag circle
//
//  Created by Ernest Mihasenko on 12.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var recognizer: UITapGestureRecognizer!
    @IBOutlet weak var circle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.isUserInteractionEnabled = true
        circle.isUserInteractionEnabled = true
        circle.layer.masksToBounds = true
        circle.layer.cornerRadius = circle.frame.width / 2
        
    }
    
    
    
    @IBAction func moveCircle(_ sender: UITapGestureRecognizer) {
            
        }
        
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
      if let view = recognizer.view {
        view.center = CGPoint(x:view.center.x + translation.x,
                                y:view.center.y + translation.y)
      }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
}

