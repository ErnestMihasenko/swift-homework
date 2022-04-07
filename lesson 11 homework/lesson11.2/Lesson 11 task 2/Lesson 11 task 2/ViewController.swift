//
//  ViewController.swift
//  Lesson 11 task 2
//
//  Created by Ernest Mihasenko on 7.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animalsNameTextField: UITextField!
    @IBOutlet weak var ownersNameTextField: UITextField!
    @IBOutlet weak var animalsWeightTextField: UITextField!
    
    @IBOutlet weak var pushInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func pushInfoButtonTap(_ sender: Any) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil)
                 .instantiateViewController(withIdentifier: "secondScreen") as? secondViewController else { return }
    
        secondViewController.animal = Animal(animalName: animalsNameTextField.text ?? "Данные не введены", ownerName: ownersNameTextField.text ?? "Данные не введены", weight: animalsWeightTextField.text ?? "Данные не введены")
        
        present(secondViewController, animated: true, completion: nil)
    }

}



