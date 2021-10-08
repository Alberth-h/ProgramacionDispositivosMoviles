//
//  ViewController.swift
//  Escuela
//
//  Created by Alexia Ruiz Quiroz on 07/10/21.
//

import UIKit

class ListaAlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        return celda
    }
    
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alumnos.append(Alumno(nombre: "Pedro Perez", matricula: "124578", correo: "pedro@escuela.edu.mx", celular: "6444000000", carrera: "Ingenieria Civil"))
        alumnos.append(Alumno(nombre: "Gustavo Garcia", matricula: "124369", correo: "gustavo@escuela.edu.mx", celular: "6444111111", carrera: "Licenciado en Derecho"))
        alumnos.append(Alumno(nombre: "Maria Martinez", matricula: "124968", correo: "maria@escuela.edu.mx", celular: "6444222222", carrera: "Ingenieria en Sistemas"))
    }


}

