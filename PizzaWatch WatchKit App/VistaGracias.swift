//
//  VistaGracias.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 4/04/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaGracias: WKInterfaceController {

    
    
    
    @IBOutlet var siiis: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        super.awake(withContext: context)
        let ww=context as! VistaConf
        
        // Configure interface objects here.
        if ww.siz == "No"{
            siiis.setText("No has elegido los ingredientes correctamente, vuleve a intentarlo para poder enviar tu orden")
        } else {
            siiis.setText("Pronto llegará una carga deliciosa a tu casa")
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
