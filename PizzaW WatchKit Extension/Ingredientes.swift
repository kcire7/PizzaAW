//
//  Ingredientes.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    var tamaño:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:[Int:String]=[1:"",2:"",3:"",4:"",5:"",6:"",7:"",8:"",9:""]
    var seleccion:String=""
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    @IBOutlet var pizza: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Tamaño
        tamaño=c.tamaño
        masa=c.masa
        queso=c.queso
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
    @IBAction func jamon(value: Bool) {
        if value==true {
            ingredientes[1]="|Jamón|"
        }else{
            ingredientes[1]=""
        }
    }
    @IBAction func peperoni(value: Bool) {
        if value==true {
            ingredientes[2]="|Peperoni|"
        }else{
            ingredientes[2]=""
        }
    }
    @IBAction func pavo(value: Bool) {
        if value==true {
            ingredientes[3]="|Pavo|"
        }else{
            ingredientes[3]=""
        }

    }
    @IBAction func salchicha(value: Bool) {
        if value==true {
            ingredientes[4]="|SAlchicha|"
        }else{
            ingredientes[4]=""
        }
    }
    
    @IBAction func aceituna(value: Bool) {
        if value==true {
            ingredientes[5]="|Aceituna|"
        }else{
            ingredientes[5]=""
        }
    }
    @IBAction func cebolla(value: Bool) {
        if value==true {
            ingredientes[6]="|Cebolla|"
        }else{
            ingredientes[6]=""
        }
    }
    @IBAction func pimiento(value: Bool) {
        if value==true {
            ingredientes[7]="|Pimiento|"
        }else{
            ingredientes[7]=""
        }
    }
    @IBAction func piña(value: Bool) {
        if value==true {
            ingredientes[8]="|Piña|"
        }else{
            ingredientes[8]=""
        }
    }
    @IBAction func anchoa(value: Bool) {
        if value==true {
            ingredientes[9]="|Anchoa|"
        }else{
            ingredientes[9]=""
        }
    }
    @IBAction func finalizar() {
        for (id,ingrediente) in ingredientes{
            seleccion+=ingrediente
        }
        if seleccion == ""{
            pizza.setText("Elige ingredientes")
            return
        }else{
                let valorContexto=Tamaño(t:tamaño,m:masa,q:queso,i:seleccion)
        pushControllerWithName("Confirmacion", context: valorContexto)
        }
    }

}
