//
//  Datos.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Datos{
    
    static var DatosAntro : [Antros] = [Antros(nombre: "Barezzito", image: (UIImage(named: "bzz")!), direccion: "Miguel aleman 420", telefono: "4214124", facebook: "bzzzzzfaceb",
                                               bebidas: [
                                                Bebidas(nombre: "cheve", descripcion: "ta rica", precio: 24, imagen: (UIImage(named: "beer")!)),
                                                Bebidas(nombre: "tequila", descripcion: "ta rico el tequils", precio: 20, imagen: (UIImage(named: "tequila")!))
        ])
    
    ]
                                               
    
    
    static var DatosBar : [Bares] = [Bares(nombre: "La patrona", imagen: (UIImage(named: "patrona")!), direccion: "miguel aleman 91112", telefono: "52151", facebook: "facebook patronaaa",
                                           bebidas: [Bebidas(nombre: "tequilusho", descripcion: "ta bueno", precio: 100, imagen: (UIImage(named: "tequila")!))],
                                           
                                           comidas: [Comidas(nombre: "hamburguesa", descripcion: "ta rica la hamburguesa", precio: 24, imagen: UIImage(named: "hamburguesa")!)]
        
        )]
    
}
