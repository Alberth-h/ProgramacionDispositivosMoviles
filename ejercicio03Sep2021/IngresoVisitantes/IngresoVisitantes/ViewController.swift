//
//  ViewController.swift
//  IngresoVisitantes
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var sldTemperatura: UISlider!
    @IBOutlet weak var lblValorTemperatura: UILabel!
    @IBOutlet weak var btnCapturar: UIButton!
    
    
    
    @IBOutlet weak var imgStatusSi: UIImageView!
    @IBOutlet weak var imgStatusNo: UIImageView!
    @IBOutlet weak var lblAutorizar: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doChangeTemperatura(_ sender: Any) {
        lblValorTemperatura.text = "\(String(Int(sldTemperatura.value)))°C"
        if sldTemperatura.value >= 38.0 {
            lblValorTemperatura.textColor = UIColor.red
            lblAutorizar.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        }
        if sldTemperatura.value < 38.0 {
            lblValorTemperatura.textColor = UIColor.black
            lblAutorizar.text = "Ingreso autorizado para \(txtNombre.text!)"
        }

    }
    
    @IBAction func doTapBtnCapturarVisitante(_ sender: Any) {
        lblNombre.alpha = 0
        txtNombre.alpha = 0
        lblTemperatura.alpha = 0
        lblValorTemperatura.alpha = 0
        sldTemperatura.alpha = 0
        btnCapturar.alpha = 0
        btnCapturar.isEnabled = false

        lblAutorizar.alpha = 1
        btnNuevo.alpha = 1
        btnNuevo.isEnabled = true
        if sldTemperatura.value >= 38.0 {
            imgStatusNo.alpha = 1
        }
        if sldTemperatura.value < 38.0 {
            imgStatusSi.alpha = 1
        }
    }
    @IBAction func doTapBtnCapturarNuevo(_ sender: Any) {
        lblNombre.alpha = 1
        txtNombre.alpha = 1
        lblTemperatura.alpha = 1
        lblValorTemperatura.alpha = 1
        sldTemperatura.alpha = 1
        btnCapturar.alpha = 1
        btnCapturar.isEnabled = true
        
        lblAutorizar.alpha = 0
        btnNuevo.alpha = 0
        btnNuevo.isEnabled = false
        imgStatusSi.alpha = 0
        imgStatusNo.alpha = 0
    }
    
}

