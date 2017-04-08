//
//  VistaMasa.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {
var masa = ""
    
    @IBAction func Del() {
        masa = "Delgada"
    }
    
    @IBAction func cruj() {
        masa = "Crujiente"
    }
    
    @IBAction func gru() {
        masa = "Gruesa"
    }
    func ponermasa(){
        let valorContexto =  Vista(d:"Tamaño Casual", v:masa)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print(masa)
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
        ponermasa()
    }

}
