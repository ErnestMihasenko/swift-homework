//
//  secondViewController.swift
//  Lesson 11 task 2
//
//  Created by Ernest Mihasenko on 7.04.22.
//

import UIKit

class secondViewController: UIViewController {
    
    var animal: Animal?
    
    @IBOutlet weak var animalsNameOutputLabel: UILabel!
    @IBOutlet weak var ownersNameOutputLabel: UILabel!
    @IBOutlet weak var animalsWeightOutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let animal = animal{
            animalsNameOutputLabel.text = animal.animalName
            ownersNameOutputLabel.text = animal.ownerName
            animalsWeightOutputLabel.text = animal.weight
        }
        
    }
    
}

class Animal {
    let animalName: String?
    let ownerName: String
    let weight: String
    
    init (animalName: String?,
          ownerName: String,
          weight: String) {
        self.animalName = animalName
        self.ownerName = ownerName
        self.weight = weight
    }
}

