//
//  Tamaño.swift
//  PizzaW
//
//  Created by Erick Rodriguez Ramos on 04/09/16.
//  Copyright © 2016 Erick Rodriguez Ramos. All rights reserved.
//

import WatchKit



class Tamaño: NSObject {
    var tamaño: String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:String=""
    init(t:String,m:String,q:String,i:String){
        tamaño=t
        masa=m
        queso=q
        ingredientes=i
    }
    
}
