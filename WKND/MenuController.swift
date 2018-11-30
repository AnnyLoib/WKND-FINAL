//
//  MenuController.swift
//  WKND
//
//  Created by Alumno on 30/11/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class MenuController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var index : Int = 0
    var tablas : Int = 0
    var celdasMenu : UITableViewCell?
    
    
    @IBOutlet weak var tbMenu: UITableView!
    @IBOutlet weak var scMenu: UISegmentedControl!
    @IBAction func doTapSegmentedMenu(_ sender: Any) {
        
        index = scMenu.selectedSegmentIndex
        tbMenu.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(index == 0)
        {
            tablas = DatosTemporales.bebidas.count
        }
        if(index == 1)
        {
            tablas = DatosTemporales.comidas.count
        }
        
        return tablas
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(index == 0)
        {
         
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as! CeldaMenu
            
            celda.imageViewMenu.image = DatosTemporales.bebidas[indexPath.row].imagenBebida
            celda.lblElementoMenu.text  = DatosTemporales.bebidas[indexPath.row].nombreBebida
            
            celdasMenu = celda
        }
        
        if(index == 1)
        {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as! CeldaMenu

            
            celda.imageViewMenu.image = DatosTemporales.comidas[indexPath.row].imagenComida
            celda.lblElementoMenu.text = DatosTemporales.comidas[indexPath.row].nombreComida
            
            celdasMenu = celda
        }
        
        return celdasMenu!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(DatosTemporales.isBar == true)
        {
            scMenu.isHidden = false
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
