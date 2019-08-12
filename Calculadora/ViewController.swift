//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 07/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

//Unos comentarios
//Comentario numero dos

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalSinPropina: UITextField!
    
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    
    @IBOutlet weak var lblCantidadConPropina: UILabel!
    
    @IBOutlet weak var lblTotalConPropina: UILabel!
    
    
    @IBAction func doChangeValores(_ sender: Any) {
        
        
        var porcentajePropina = 0.0
        porcentajePropina = Double(sldPorcentajePropina.value)
        porcentajePropina.round()
        lblPorcentajePropina.text = "\(String(format: "%.0f", porcentajePropina)) %"
        
        porcentajePropina = porcentajePropina / 100.0
        
        var cantidadConPropina = 0.0
        cantidadConPropina = Double(txtTotalSinPropina.text!)! * porcentajePropina
        
        lblCantidadConPropina.text = "$\(String(format: "%.2f", cantidadConPropina))"
        
        let totalConPropina = Double(txtTotalSinPropina.text!)! + cantidadConPropina
        lblTotalConPropina.text = "$\(String(format: "%.2f", totalConPropina))"
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //----------------------------------------------------------------
    
    
    


}

