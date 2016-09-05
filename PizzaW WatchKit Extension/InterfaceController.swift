//
//  InterfaceController.swift
//  PizzaW WatchKit Extension
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
    @IBAction func grande() {
        let valorContexto=Tamaño(t:"Grande",m:"",q:"",i:"")
        pushControllerWithName("Masa", context: valorContexto)
    }

    @IBAction func mediana() {
        let valorContexto=Tamaño(t:"Mediana",m:"",q:"",i:"")
        pushControllerWithName("Masa", context: valorContexto)
    }
    @IBAction func chica() {
        let valorContexto=Tamaño(t:"Chica",m:"",q:"",i:"")
        pushControllerWithName("Masa", context: valorContexto)
    }
}
