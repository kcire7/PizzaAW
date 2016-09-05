//
//  Queso.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class Queso: WKInterfaceController {
 var tamaño:String=""
    var masa:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Tamaño
        tamaño=c.tamaño
        masa=c.masa
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func mozarela() {
        let valorContexto=Tamaño(t:tamaño,m:masa,q:"Mozarela",i:"")
        pushControllerWithName("Ingredientes", context: valorContexto)
    }
    @IBAction func Cheddar() {
        let valorContexto=Tamaño(t:tamaño,m:masa,q:"Cheddar",i:"")
        pushControllerWithName("Ingredientes", context: valorContexto)
    }
    @IBAction func permesano() {
        let valorContexto=Tamaño(t:tamaño,m:masa,q:"Parmesano",i:"")
        pushControllerWithName("Ingredientes", context: valorContexto)
    }
    @IBAction func sinQueso() {
        let valorContexto=Tamaño(t:tamaño,m:masa,q:"Sin Queso",i:"")
        pushControllerWithName("Ingredientes", context: valorContexto)
    }
}
