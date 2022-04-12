//
//  fifthViewController.swift
//  lesson 11 homework
//
//  Created by Ernest Mihasenko on 5.04.22.
//

import UIKit

class fifthViewController: UIViewController {
    
    var enteredText = ""
    
    @IBOutlet weak var textFromFirstScreen: UILabel!
    
    @IBOutlet weak var fifthScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func fifthScreenButtonPush(_ sender: Any) {
        
        textFromFirstScreen.text = enteredText
        
    }
    
}

