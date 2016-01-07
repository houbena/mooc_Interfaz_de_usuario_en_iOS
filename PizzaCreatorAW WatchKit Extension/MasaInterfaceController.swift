//
//  MasaInterfaceController.swift
//  PizzaCreatorAW
//
//  Created by HOU YADDA on 07.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    var valores = Valores(t: "",m: "",q: "",
        ja: false,pe: false,pa: false,sa: false,ac: false,ce: false,pim: false,pin: false)
    
    @IBOutlet var proxOpcionBoton: WKInterfaceButton!
    
    @IBOutlet var delg: WKInterfaceButton!
    @IBOutlet var cruj: WKInterfaceButton!
    @IBOutlet var grue: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Valores
        valores.tamano = c.tamano
        // Configure interface objects here.
    }

    @IBAction func masaDelgada() {
        valores.masa = "delgada"
        proxOpcionBoton.setEnabled(true)
        delg.setBackgroundColor(UIColor.greenColor())
        cruj.setBackgroundColor(UIColor.darkGrayColor())
        grue.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func masaCrujiente() {
        valores.masa = "crujiente"
        proxOpcionBoton.setEnabled(true)
        delg.setBackgroundColor(UIColor.darkGrayColor())
        cruj.setBackgroundColor(UIColor.greenColor())
        grue.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func masaGruesa() {
        valores.masa = "gruesa"
        proxOpcionBoton.setEnabled(true)
        delg.setBackgroundColor(UIColor.darkGrayColor())
        cruj.setBackgroundColor(UIColor.darkGrayColor())
        grue.setBackgroundColor(UIColor.greenColor())
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        proxOpcionBoton.setEnabled(false)
        delg.setBackgroundColor(UIColor.darkGrayColor())
        cruj.setBackgroundColor(UIColor.darkGrayColor())
        grue.setBackgroundColor(UIColor.darkGrayColor())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func proxOpcion() {
        pushControllerWithName("vistaQueso", context: valores)
    }
}
