//
//  VistaRest.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaRest: WKInterfaceController {
    var rest = ""
    @IBAction func john() {
        rest = "Papa Johns"
    }
    
    @IBAction func hut() {
        rest = "Pizza Hut"
    }

    @IBAction func metro() {
        rest = "Pizza Metro"
    }
    func ponerrest(){
        let valorContexto =  Vista(d:"Tamaño Casual", v:rest)
        pushController(withName: "IdentificadorValor", context: valorContexto)
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
        ponerrest()
    }

}
