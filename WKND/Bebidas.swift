//
//  Bebidas.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Bebidas{
    
    var nombreBebida : String
    var descripcionBebida : String
    var precioBebida : Int
    var imagenBebida : UIImage
    
    init(nombre : String, descripcion : String, precio : Int, imagen: UIImage)
    {
        self.nombreBebida = nombre
        self.descripcionBebida = descripcion
        self.precioBebida = precio
        self.imagenBebida = imagen
        
    }
    
}
