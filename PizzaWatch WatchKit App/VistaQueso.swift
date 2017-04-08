//
//  VistaQueso.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {
var  queso = ""
    
    @IBAction func moz() {
        queso = "Mozarella"
    }
    
    @IBAction func Ched() {
        queso = "Cheddar"
    }
    
    @IBAction func par() {
        queso = "Parmesano"
    }
    @IBAction func sin() {
        queso = "Sin Queso"
    }
    func ponerquesp(){
        let valorContexto =  Vista(d:"Tamaño Casual", v:queso)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print(queso)
    }

    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        ponerquesp()
    }

}
