//
//  ViewController.swift
//  12.2 homework
//
//  Created by Ernest Mihasenko on 11.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var circle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        circle.layer.masksToBounds = true
        circle.layer.cornerRadius = circle.frame.width / 2
        
        circleTap()
        screenTap()
    }
    
    private func circleTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleCircleTap))
        
        circle.isUserInteractionEnabled = true
        circle.isEnabled = true
        
        circle.addGestureRecognizer(tapGesture)
    }
    
    @objc private func handleCircleTap() {
        circle.isHidden = true
    }
    
    private func screenTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleScreenTap))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func handleScreenTap(gesture: UITapGestureRecognizer) {
        circle.isHidden = false
        circle.layer.position = gesture.location(in: view)
    }
    
}

