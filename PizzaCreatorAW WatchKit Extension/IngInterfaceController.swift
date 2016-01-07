//
//  IngInterfaceController.swift
//  PizzaCreatorAW
//
//  Created by HOU YADDA on 07.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit
import Foundation


class IngInterfaceController: WKInterfaceController {

    var valores = Valores(t: "",m: "",q: "",
        ja: false,pe: false,pa: false,sa: false,ac: false,ce: false,pim: false,pin: false)
    
    var n = 0
    
    @IBOutlet var verBoton: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Valores
        valores.tamano = c.tamano
        valores.masa = c.masa
        valores.queso = c.queso
        // Configure interface objects here.
    }
    
    @IBAction func jamon(value: Bool) {
        valores.jamon = value
        countIng(value)
    }

    @IBAction func pepperoni(value: Bool) {
        valores.pepper = value
        countIng(value)
    }

    @IBAction func pavo(value: Bool) {
        valores.pavo = value
        countIng(value)
    }
    
    @IBAction func salchicha(value: Bool) {
        valores.salchi = value
        countIng(value)
    }

    @IBAction func aceituna(value: Bool) {
        valores.aceit = value
        countIng(value)
    }
    
    @IBAction func cebolla(value: Bool) {
        valores.ceboll = value
        countIng(value)
    }
    
    @IBAction func pimiento(value: Bool) {
        valores.pimient = value
        countIng(value)
    }
    
    @IBAction func pina(value: Bool) {
        valores.pina = value
        countIng(value)
    }
    
    func countIng(v: Bool){
        if v == true {n++} else {n--}
        if n > 5 {verBoton.setEnabled(false)} else {verBoton.setEnabled(true)}
    }
    
    @IBAction func verLaOrden() {
        pushControllerWithName("vistaOrden", context: valores)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
