//
//  VistaTamano.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaTamano: WKInterfaceController {
    var tamano = ""
    
    @IBAction func Peq() {
        tamano = "Pequeña"
    }
    @IBAction func med() {
        tamano = "Mediana"
    }
    
    @IBAction func Grande() {
        tamano = "Grande"
    }
    
    func ponertamano(){
        
        /*if tamano == 1{
            tamtam = "Pequeña"
        } else if tamano == 2{
            tamtam = "Mediana"
        } else if tamano == 1{
            tamtam = "Grande"
        }
        */
        let valorContexto =  Vista(d:"Tamaño Casual", v:tamano)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print(tamano)
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
        ponertamano()
    }

}
