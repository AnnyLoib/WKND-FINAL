//
//  IniciarSesionController.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class IniciarSesionController : UIViewController {

    
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func doTapGoToLugares(_ sender: Any) {
        
        if(txtUsuario.text != nil) && (txtPassword.text != nil)
        {
            performSegue(withIdentifier: "goToLugares", sender: self)
        }else{
            
        }
        
    }
    
}
