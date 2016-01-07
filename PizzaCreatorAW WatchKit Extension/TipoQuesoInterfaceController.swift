//
//  TipoQuesoInterfaceController.swift
//  PizzaCreatorAW
//
//  Created by HOU YADDA on 07.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoInterfaceController: WKInterfaceController {

    @IBOutlet var proxOpcionBoton: WKInterfaceButton!
    
    @IBOutlet var moza: WKInterfaceButton!
    @IBOutlet var ched: WKInterfaceButton!
    @IBOutlet var parm: WKInterfaceButton!
    @IBOutlet var sinq: WKInterfaceButton!
    
    var valores = Valores(t: "",m: "",q: "",
        ja: false,pe: false,pa: false,sa: false,ac: false,ce: false,pim: false,pin: false)
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Valores
        valores.tamano = c.tamano
        valores.masa = c.masa
        // Configure interface objects here.
    }
    
    @IBAction func quesoM() {
        proxOpcionBoton.setEnabled(true)
        valores.queso = "mozarela"
        moza.setBackgroundColor(UIColor.greenColor())
        ched.setBackgroundColor(UIColor.darkGrayColor())
        parm.setBackgroundColor(UIColor.darkGrayColor())
        sinq.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func quesoC() {
        proxOpcionBoton.setEnabled(true)
        valores.queso = "cheddar"
        moza.setBackgroundColor(UIColor.darkGrayColor())
        ched.setBackgroundColor(UIColor.greenColor())
        parm.setBackgroundColor(UIColor.darkGrayColor())
        sinq.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func quesoP() {
        proxOpcionBoton.setEnabled(true)
        valores.queso = "parmesano"
        moza.setBackgroundColor(UIColor.darkGrayColor())
        ched.setBackgroundColor(UIColor.darkGrayColor())
        parm.setBackgroundColor(UIColor.greenColor())
        sinq.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func sinQueso() {
        proxOpcionBoton.setEnabled(true)
        valores.queso = "sin queso"
        moza.setBackgroundColor(UIColor.darkGrayColor())
        ched.setBackgroundColor(UIColor.darkGrayColor())
        parm.setBackgroundColor(UIColor.darkGrayColor())
        sinq.setBackgroundColor(UIColor.greenColor())
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        proxOpcionBoton.setEnabled(false)
        moza.setBackgroundColor(UIColor.darkGrayColor())
        ched.setBackgroundColor(UIColor.darkGrayColor())
        parm.setBackgroundColor(UIColor.darkGrayColor())
        sinq.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func proxOpcion() {
        pushControllerWithName("vistaIng", context: valores)
    }
}
