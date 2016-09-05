//
//  Confirmacion.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class Confirmacion: WKInterfaceController {
    var tamaño:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:String=""
    
   
    @IBOutlet var tam: WKInterfaceLabel!
    @IBOutlet var mas: WKInterfaceLabel!
    @IBOutlet var que: WKInterfaceLabel!
    @IBOutlet var ing: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Tamaño
        tam.setText("Tamaño: "+c.tamaño)
        mas.setText("Masa: "+c.masa)
        que.setText("Queso: "+c.queso)
        ing.setText("Con: "+c.ingredientes)
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

    @IBAction func ok() {
        let valorContexto=Tamaño(t:"",m:"",q:"",i:"")
        pushControllerWithName("Fin", context: valorContexto)
    }
    
    @IBAction func cancelar() {
        let valorContexto=Tamaño(t:"",m:"",q:"",i:"")
        pushControllerWithName("Ingredientes", context: valorContexto)
    }
}
