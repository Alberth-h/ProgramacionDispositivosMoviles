//
//  ViewController.swift
//  PracticaInteraccion
//
//  Created by Alumno on 8/26/21.
//  Copyright © 2021 ULSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController { 

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtEdad: UITextField!
    
    @IBAction func doTapBtnDecirEdad(_ sender: Any) {
        lblResultado.text = "La persona \(lblNombre.text!) tiene \(txtEdad.text!) años"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = "Alberto Hoyos"
        // Do any additional setup after loading the view.
    }
    
}

