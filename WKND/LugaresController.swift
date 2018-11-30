//
//  LugaresController.swift
//  WKND
//
//  Created by Alumno on 29/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit


class LugaresController :UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var index : Int = 0
    var tablas : Int = 0
    var celdaLugares : UITableViewCell?
    
    
    
    @IBOutlet weak var tbLugares: UITableView!
    @IBOutlet weak var scLugares: UISegmentedControl!
    
    @IBAction func selectedIndex(_ sender: Any) {
        
        index = scLugares.selectedSegmentIndex
        tbLugares.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       
        
        if(index == 0)
        {
             tablas = Datos.DatosAntro.count
        }
        
        if(index == 1)
        {
            tablas = Datos.DatosBar.count
        }
        
        return tablas
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(index == 0)
        {
           let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLugar") as! CeldaLugares
            
            celda.imageViewLugar.image = Datos.DatosAntro[indexPath.row].imagenAntro
            celda.lblLugares.text = Datos.DatosAntro[indexPath.row].nombreAntro
            
            celdaLugares = celda
            
        }
        
        if(index == 1)
        {
            
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLugar") as! CeldaLugares
            
            celda.imageViewLugar.image = Datos.DatosBar[indexPath.row].imagenBar
            celda.lblLugares.text = Datos.DatosBar[indexPath.row].nombreBar
            
            celdaLugares = celda
            
        }
        
        return celdaLugares!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(index == 0)
        {
            DatosTemporales.nombreLugar = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].nombreAntro
            DatosTemporales.direccionLugar = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].direccionAntro
            
            DatosTemporales.imagenLugar = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].imagenAntro
            
            DatosTemporales.facebookUrl = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].facebookAntro
            DatosTemporales.telefonoLugar = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].telefonoAntro
            DatosTemporales.bebidas = Datos.DatosAntro[(tbLugares.indexPathForSelectedRow?.row)!].bebidasAntro
            
        }
        
        if(index == 1)
        {
            DatosTemporales.nombreLugar = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].nombreBar
            DatosTemporales.direccionLugar = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].direccionBar
            DatosTemporales.facebookUrl = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].facebookBar
            DatosTemporales.telefonoLugar = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].telefonoBar
            DatosTemporales.bebidas = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].bebidasBar
            DatosTemporales.comidas = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].comidasBar
            
            DatosTemporales.imagenLugar = Datos.DatosBar[(tbLugares.indexPathForSelectedRow?.row)!].imagenBar
            
            DatosTemporales.isBar = true
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
