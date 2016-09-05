//
//  Fin.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class Fin: WKInterfaceController {
    var tamaño:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Tamaño
        tamaño=c.tamaño
        masa=c.masa
        queso=c.queso
        ingredientes=c.ingredientes
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

    @IBAction func otra() {
        let valorContexto=Tamaño(t:"",m:"",q:"",i:"")
        pushControllerWithName("InterfaceController", context: valorContexto)
    }
}
