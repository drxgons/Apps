//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Omar Lemuz on 9/4/19.
//  Copyright © 2019 Omar Lemuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var animalSoundLabel: UILabel!

    let mooSound = SimpleSound(named: "moo")
    let woofSound = SimpleSound(named: "woof")
    let meowSound = SimpleSound(named: "meow")

    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo"
        mooSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof"
        woofSound.play()
    }
    
    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow"
        meowSound.play()
    }
    
}


