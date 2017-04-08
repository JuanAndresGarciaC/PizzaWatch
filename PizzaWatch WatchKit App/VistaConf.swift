//
//  VistaConf.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation

class VistaConf: WKInterfaceController {
    @IBOutlet var tamm: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var rest: WKInterfaceLabel!
    @IBOutlet var ingreJam: WKInterfaceLabel!
    
    @IBOutlet var ingrePep: WKInterfaceLabel!
    
    @IBOutlet var ingrePavo: WKInterfaceLabel!
    
    @IBOutlet var ingreNuez: WKInterfaceLabel!
    
    @IBOutlet var ingrePin: WKInterfaceLabel!
    
    @IBOutlet var rapp: WKInterfaceLabel!
    var siz = "No"
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! VistaTamano
        tamm.setText(c.tamano)
        let m=context as! VistaMasa
        masa.setText(m.masa)
        let q=context as! VistaQueso
        queso.setText(q.queso)
        let r=context as! VistaRest
        rest.setText(r.rest)
        let i=context as! VistaIngre
        ingreJam.setText(i.jamon)
        ingrePep.setText(i.pepperoni)
        ingrePavo.setText(i.pavo)
        ingreNuez.setText(i.nuez)
        ingrePin.setText(i.jamon)
        let p=context as! VistaRapidez
        rapp.setText(p.rap)
    }
    
    @IBOutlet var siza: WKInterfaceLabel!
    
   
    
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if tamm.description == "No Selec."{
            siza.setText("Falta eleccion. Vuelve a empezar")
            siz = "No"
        } else if masa.description == "No Selec."{
            siza.setText("Falta eleccion. Vuelve a empezar")
                siz = "No"
        } else if queso.description == "No Selec."{
            siza.setText("Falta eleccion. Vuelve a empezar")
            siz = "No"
        } else if rest.description == "No Selec."{
            siza.setText("Falta eleccion. Vuelve a empezar")
            siz = "No"
        }else if rapp.description == "No Selec."{
            siza.setText("Falta eleccion. Vuelve a empezar")
            siz = "No"
        } else {
            siz = "Si"
        }
    }

    func ponerquesp(){
        let valorContexto =  Vista(d:"Tamaño Casual", v:siz)
        pushController(withName: "IdentificadorValor", context: valorContexto)
        print(siz)
    }

    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
