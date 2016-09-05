//
//  Masa.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class Masa: WKInterfaceController {
    var tamaño:String=""
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Tamaño
        tamaño=c.tamaño
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
    @IBAction func delgada() {
        let valorContexto=Tamaño(t:tamaño,m:"Delgada",q:"",i:"")
        pushControllerWithName("Queso", context: valorContexto)
    }

    @IBAction func crujiente() {
        let valorContexto=Tamaño(t:tamaño,m:"Crujiente",q:"",i:"")
        pushControllerWithName("Queso", context: valorContexto)
    }
    @IBAction func gruesa() {
        let valorContexto=Tamaño(t:tamaño,m:"Gruesa",q:"",i:"")
        pushControllerWithName("Queso", context: valorContexto)
    }
}
