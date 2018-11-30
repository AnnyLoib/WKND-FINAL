//
//  Antros.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Antros {
    var nombreAntro : String
    var imagenAntro : UIImage
    var direccionAntro : String
    var telefonoAntro : String
    var facebookAntro : String
    
 
    var bebidasAntro : [Bebidas] = []
    
    init(nombre: String, image : UIImage, direccion : String, telefono: String, facebook : String,
         bebidas: [Bebidas])
    {
        self.nombreAntro = nombre
        self.imagenAntro = image
        self.direccionAntro = direccion
        self.telefonoAntro = telefono
        self.facebookAntro = facebook
        self.bebidasAntro = bebidas
    }
    
 
    
}
