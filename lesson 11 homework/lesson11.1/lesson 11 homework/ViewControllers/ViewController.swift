//
//  ViewController.swift
//  lesson 11 homework
//
//  Created by Ernest Mihasenko on 5.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var firstScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushFirstScreenButton(_ sender: Any) {
       guard let secondViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(withIdentifier: "secondScreen") as? secondViewController else { return }

        secondViewController.enteredText = textField.text ?? "Text was not entered"
    
         present(secondViewController, animated: true, completion: nil)
    }
    
}

