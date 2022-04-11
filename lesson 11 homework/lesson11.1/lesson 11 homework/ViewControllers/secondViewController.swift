//
//  secondViewController.swift
//  lesson 11 homework
//
//  Created by Ernest Mihasenko on 5.04.22.
//

import UIKit

class secondViewController: UIViewController {
    
    var enteredText = ""
    
    @IBOutlet weak var secondScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushSecondScreenButton(_ sender: Any) {
        guard let thirdViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "thirdScreen") as? thirdViewController else { return }
        
        thirdViewController.enteredText = enteredText
        
        present(thirdViewController, animated: true, completion: nil)
    }
    
}
