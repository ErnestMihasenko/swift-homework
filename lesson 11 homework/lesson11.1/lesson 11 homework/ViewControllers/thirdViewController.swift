//
//  thirdViewController.swift
//  lesson 11 homework
//
//  Created by Ernest Mihasenko on 5.04.22.
//

import UIKit

class thirdViewController: UIViewController {
    
    var enteredText = ""
    
    @IBOutlet weak var thirdScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func thirdScreenButtonPush(_ sender: Any) {
        guard let fourthViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "fourthScreen") as? fourthViewController else { return }
        
        fourthViewController.enteredText = enteredText
        
        present(fourthViewController, animated: true, completion: nil)
    }
    
}
