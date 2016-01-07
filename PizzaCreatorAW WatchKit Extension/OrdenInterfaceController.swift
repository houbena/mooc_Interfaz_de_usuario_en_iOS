//
//  OrdenInterfaceController.swift
//  PizzaCreatorAW
//
//  Created by HOU YADDA on 07.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit
import Foundation


class OrdenInterfaceController: WKInterfaceController {

    var valores = Valores(t: "",m: "",q: "",
        ja: false,pe: false,pa: false,sa: false,ac: false,ce: false,pim: false,pin: false)
    
    var ing = [String](count: 5, repeatedValue: "---")
    
    @IBOutlet var t: WKInterfaceLabel!
    @IBOutlet var m: WKInterfaceLabel!
    @IBOutlet var q: WKInterfaceLabel!
    @IBOutlet var i1: WKInterfaceLabel!
    @IBOutlet var i2: WKInterfaceLabel!
    @IBOutlet var i3: WKInterfaceLabel!
    @IBOutlet var i4: WKInterfaceLabel!
    @IBOutlet var i5: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Valores
        valores.tamano = c.tamano
        valores.masa = c.masa
        valores.queso = c.queso
        valores.jamon = c.jamon
        valores.pepper = c.pepper
        valores.pavo = c.pavo
        valores.salchi = c.salchi
        valores.aceit = c.aceit
        valores.ceboll = c.ceboll
        valores.pimient = c.pimient
        valores.pina = c.pina
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var i = 0
        if valores.jamon == true { ing[i] = "jamón"; i++ }
        if valores.pepper == true {ing[i] = "pepperoni"; i++ }
        if valores.pavo == true {ing[i] = "pavo"; i++ }
        if valores.salchi == true {ing[i] = "salchicha"; i++ }
        if valores.aceit == true {ing[i] = "aceituna"; i++ }
        if valores.ceboll == true {ing[i] = "cebolla"; i++ }
        if valores.pimient == true {ing[i] = "pimiento"; i++ }
        if valores.pina == true {ing[i] = "piña"; i++ }

        
        t.setText(valores.tamano)
        m.setText(valores.masa)
        q.setText(valores.queso)
        i1.setText(ing[0])
        i2.setText(ing[1])
        i3.setText(ing[2])
        i4.setText(ing[3])
        i5.setText(ing[4])

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
