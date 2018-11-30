//
//  Comidas.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Comidas{
    
    var nombreComida : String
    var descripcionComida : String
    var precioComida : Int
    var imagenComida : UIImage
    
    init(nombre : String, descripcion : String, precio : Int, imagen: UIImage)
    {
        self.nombreComida = nombre
        self.descripcionComida = descripcion
        self.precioComida = precio
        self.imagenComida = imagen
        
    }
    
}
