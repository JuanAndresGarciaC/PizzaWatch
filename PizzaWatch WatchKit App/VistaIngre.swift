//
//  VistaIngre.swift
//  PizzaWatch
//
//  Created by Juan Andres Garcia C on 30/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngre: WKInterfaceController {
    
    @IBOutlet var jamonl: WKInterfaceLabel!
    
    @IBOutlet var pepl: WKInterfaceLabel!
    
    @IBOutlet var pavol: WKInterfaceLabel!
    
    @IBOutlet var nuezl: WKInterfaceLabel!
    
    @IBOutlet var pinal: WKInterfaceLabel!
    
    @IBOutlet var cont: WKInterfaceLabel!
    var selecj = 0
    var selecpp = 0
    var selecpv = 0
    var selecnz = 0
    var selecpn = 0
    var jamon = ""
    var pepperoni = ""
    var pavo = ""
    var nuez = ""
    var piña = ""
    
    
    @IBAction func jj() {
        if selecj == 0{
            cont.setText("Si")
            jamon = "Si"
        }else{
            selecj = 1
            jamon = "No"
            cont.setText("No")
        }
        if selecj == 1{
            cont.setText("Puedes continuar")
        }else if selecpp == 1{
            cont.setText("Puedes continuar")
        }else if selecpv == 1{
            cont.setText("Puedes continuar")
        }else if selecnz == 1{
            cont.setText("Puedes continuar")
        }else if selecpn == 1{
            cont.setText("Puedes continuar")
        }else{
            cont.setText("Selecciona uno para continuar")
        }
    }
    
    @IBAction func pp() {
        if selecpp == 0{
            pepl.setText("Si")
            pepperoni = "Si"
        }else{
            selecpp = 1
            pepl.setText("No")
            pepperoni = "No"        }
        if selecj == 1{
            cont.setText("Puedes continuar")
        }else if selecpp == 1{
            cont.setText("Puedes continuar")
        }else if selecpv == 1{
            cont.setText("Puedes continuar")
        }else if selecnz == 1{
            cont.setText("Puedes continuar")
        }else if selecpn == 1{
            cont.setText("Puedes continuar")
        }else{
            cont.setText("Selecciona uno para continuar")
        }
    }
    
    @IBAction func pv() {
        if selecpv == 0{
            pavol.setText("Si")
            pavo = "Si"
        }else{
            selecpv = 1
            pavol.setText("No")
            pavo = "No"
        }
        if selecj == 1{
            cont.setText("Puedes continuar")
        }else if selecpp == 1{
            cont.setText("Puedes continuar")
        }else if selecpv == 1{
            cont.setText("Puedes continuar")
        }else if selecnz == 1{
            cont.setText("Puedes continuar")
        }else if selecpn == 1{
            cont.setText("Puedes continuar")
        }else{
            cont.setText("Selecciona uno para continuar")
        }
    }
    
    @IBAction func nz() {
        if selecnz == 0{
            nuezl.setText("Si")
            nuez = "Si"
        }else{
            selecnz = 1
            nuezl.setText("No")
            nuez = "No"
        }
        if selecj == 1{
            cont.setText("Puedes continuar")
        }else if selecpp == 1{
            cont.setText("Puedes continuar")
        }else if selecpv == 1{
            cont.setText("Puedes continuar")
        }else if selecnz == 1{
            cont.setText("Puedes continuar")
        }else if selecpn == 1{
            cont.setText("Puedes continuar")
        }else{
            cont.setText("Selecciona uno para continuar")
        }
    }
    
    @IBAction func pn() {
        if selecpn == 0{
            pinal.setText("Si")
            piña = "Si"
        }else{
            selecpn = 1
            pinal.setText("No")
            piña = "No"
        }
        if selecj == 1{
            cont.setText("Puedes continuar")
        }else if selecpp == 1{
            cont.setText("Puedes continuar")
        }else if selecpv == 1{
            cont.setText("Puedes continuar")
        }else if selecnz == 1{
            cont.setText("Puedes continuar")
        }else if selecpn == 1{
            cont.setText("Puedes continuar")
        }else{
            cont.setText("Selecciona uno para continuar")
        }
    }
    func ponerIngre(){
        let valorContexto1 =  Vista(d:"Tamaño Casual", v:pepperoni)
        pushController(withName: "IdentificadorValor", context: valorContexto1)
        let valorContexto2 =  Vista(d:"Tamaño Casual", v:pavo)
        pushController(withName: "IdentificadorValor", context: valorContexto2)
        let valorContexto3 =  Vista(d:"Tamaño Casual", v:jamon)
        pushController(withName: "IdentificadorValor", context: valorContexto3)
        let valorContexto4 =  Vista(d:"Tamaño Casual", v:nuez)
        pushController(withName: "IdentificadorValor", context: valorContexto4)
        let valorContexto5 =  Vista(d:"Tamaño Casual", v:piña)
        pushController(withName: "IdentificadorValor", context: valorContexto5)
        
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
        ponerIngre()
    }

}
