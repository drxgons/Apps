//
//  ViewController.swift
//  Examen1
//
//  Created by Omar Lemuz on 9/18/19.
//  Copyright © 2019 Omar Lemuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var conteo = 0
    
    @IBOutlet weak var respuestaSwitch: UISwitch!
    
    @IBOutlet weak var botonRevisar: UIButton!
    @IBOutlet weak var respuestaSwitch2: UISwitch!
    @IBOutlet weak var respuestaSwitch3: UISwitch!
    @IBOutlet weak var respuestaSwitch4: UISwitch!
    @IBOutlet weak var respuestaSwitch5: UISwitch!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var codigoDescuento: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
        @IBAction func revisaRespuestas(_ sender: Any?) {
                if respuestaSwitch .isOn{
                    conteo += 1
                }
                if respuestaSwitch2 .isOn{
                    conteo += 1
                }
                if respuestaSwitch3 .isOn{
                    conteo += 0
                }else{
                    conteo += 1
                }
                if respuestaSwitch4 .isOn{
                    conteo += 1
                }
                if respuestaSwitch5 .isOn{
                    conteo += 0
                }else{
                    conteo += 1
                }
                if conteo == 5{
                    let win = UIAlertController(title: "Our longshots really paid off, ¡GANASTE!\nCÓDIGO DE DESCUENTO: CATFISH2019", message: "Preguntas correctas: 5", preferredStyle: UIAlertController.Style.alert)
                    win.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.default, handler: { _ in
                    }))
                    self.present(win, animated: true, completion: nil)
                    conteo = 0
                }else{
                    let loser = UIAlertController(title: "None of our longshots paid off, ¡PERDISTE! :(", message: "Preguntas correctas: " + String(conteo), preferredStyle: UIAlertController.Style.alert)
                    loser.addAction(UIAlertAction(title: "Reintentar", style: UIAlertAction.Style.default, handler: { _ in
                    }))
                    self.present(loser, animated: true, completion: nil)
                    conteo = 0
                }
            }
    
        @IBAction func stepperCantidad(_ sender: UIStepper) {
            var number = 0
            number = Int(sender.value)
            if number > 10{
                number = 0
            }
            label1.text = String(number)
        }
    
        @IBAction func stepperCantidad2(_ sender: UIStepper) {
            var number = 0
            number = Int(sender.value)
            if number > 10{
                number = 0
            }
            label2.text = String(number)
        }
    
    @IBAction func botonComprar(_ sender: Any) {
        let codigo = codigoDescuento.text?.uppercased()
        if codigo == "CATFISH2019"{
            let calculo = (Int(label1.text!)! * 300) + (Int(label2.text!)! * 500)
            let descuento =  (Double(calculo) * 0.50)
            let total = Int(Double(calculo) - descuento)
            let compraDescuento = UIAlertController(title: "¡Compra finalizada con cupón de descuento aplicado!\nTotal a pagar: $" + String(total), message: "Gracias por tu compra", preferredStyle: UIAlertController.Style.alert)
            compraDescuento.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.default, handler: { _ in
            }))
            self.present(compraDescuento, animated: true, completion: nil)
            
        }else{
            let total = (Int(label1.text!)! * 300) + (Int(label2.text!)! * 500)
            let compraNormal = UIAlertController(title: "¡Compra finalizada!\nTotal a pagar: $" + String(total), message: "Gracias por tu compra", preferredStyle: UIAlertController.Style.alert)
            compraNormal.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.default, handler: { _ in
            }))
            self.present(compraNormal, animated: true, completion: nil)
    }
    
    }
}
    




