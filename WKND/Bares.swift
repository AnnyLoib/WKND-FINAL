//
//  Bares.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Bares {
    var nombreBar : String
    var imagenBar : UIImage
    var direccionBar: String
    var telefonoBar : String
    var facebookBar : String
    
    var bebidasBar : [Bebidas] = []
    var comidasBar : [Comidas] = []
    
    init(nombre : String, imagen: UIImage, direccion : String, telefono : String, facebook : String, bebidas: [Bebidas], comidas: [Comidas])
    {
        
        self.nombreBar = nombre
        self.imagenBar = imagen
        self.direccionBar = direccion
        self.telefonoBar = telefono
        self.facebookBar = facebook
        self.bebidasBar = bebidas
        self.comidasBar = comidas
        
    }
  
}
