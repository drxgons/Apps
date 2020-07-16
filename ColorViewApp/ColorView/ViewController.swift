//
//  ViewController.swift
//  ColorView
//
//  Created by 2020-1 on 8/30/19.
//  Copyright © 2019 2020-1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: //Copia de la instancia del objeto que está en pantalla
        UIView!
    @IBOutlet weak var redSwitch:
        UISwitch! //Instancias del objeto de esta clase
    @IBOutlet weak var greenSwitch:
        UISwitch!
    @IBOutlet weak var blueSwitch:
        UISwitch!
    @IBOutlet weak var redSlider:
        UISlider!
    @IBOutlet weak var greenSlider:
        UISlider!
    @IBOutlet weak var blueSlider:
        UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5 //Ancho de borde
        colorView.layer.cornerRadius = 20 //Redondeo de borde
        colorView.layer.borderColor =
            UIColor.black.cgColor
        updateControls()
        updateColors()
        
    }
    
    func updateColors(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn { //Devuelve bool true o false
            red = CGFloat(redSlider.value) //Construye un nuevo tipo de dato a partir de otro CGFloat -> Constructor
        }
        
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)//Color construido a través de UIColor (le pasamos rgb)
        colorView.backgroundColor = color
        
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColors()
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        updateControls()
        updateColors()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateControls()
        updateColors()
    }
    

}

