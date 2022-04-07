//
//  fourthViewController.swift
//  lesson 11 homework
//
//  Created by Ernest Mihasenko on 5.04.22.
//

import UIKit

class fourthViewController: UIViewController {

    var enteredText = ""
    
    @IBOutlet weak var fourthScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func fourthScreenButtonPush(_ sender: Any) {
        guard let fifthViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "fifthScreen") as? fifthViewController else { return }
        
        fifthViewController.enteredText = enteredText
        
         present(fifthViewController, animated: true, completion: nil)
        
    }
}
