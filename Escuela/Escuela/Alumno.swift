//
//  Alumno.swift
//  Escuela
//
//  Created by Alexia Ruiz Quiroz on 07/10/21.
//

import Foundation

class Alumno {
    var nombre : String
    var matricula : String
    var correo : String
    var celular : String
    var carrera : String
    
    init(nombre: String, matricula: String, correo: String, celular: String, carrera: String) {
        self.nombre = nombre
        self.matricula = matricula
        self.correo = correo
        self.celular = celular
        self.carrera = carrera
    }
}
