//
//  DetalleLugar.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleLugar: UIViewController{
    
    
    @IBOutlet weak var imageViewDetalleLugar: UIImageView!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblFacebook: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewDetalleLugar.image = DatosTemporales.imagenLugar
        lblDireccion.text = DatosTemporales.direccionLugar
        lblTelefono.text = DatosTemporales.telefonoLugar
        lblFacebook.text = DatosTemporales.facebookUrl
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
