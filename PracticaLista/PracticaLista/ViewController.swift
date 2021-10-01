//
//  ViewController.swift
//  PracticaLista
//
//  Created by Alexia Ruiz Quiroz on 28/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let nombres = ["jose", "ana", "maria", "pedro"]
    let matriculas = ["9999", "4567", "2764", "1739"]
    let promedios = ["9.9", "8.3", "10.0", "7.6"]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlmunoController
        
        celda.lblNombre.text = nombres[indexPath.row]
        celda.lblMatricula.text = matriculas[indexPath.row]
        celda.lblPromedio.text = promedios[indexPath.row]
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doTapVolver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

