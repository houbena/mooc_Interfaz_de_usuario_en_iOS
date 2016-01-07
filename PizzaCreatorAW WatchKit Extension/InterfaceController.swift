//
//  InterfaceController.swift
//  PizzaCreatorAW WatchKit Extension
//
//  Created by HOU YADDA on 06.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var valores = Valores(t: "",m: "",q: "",
        ja: false,pe: false,pa: false,sa: false,ac: false,ce: false,pim: false,pin: false)

    @IBOutlet var proxOpcionButton: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBOutlet var chica: WKInterfaceButton!
    @IBOutlet var medi: WKInterfaceButton!
    @IBOutlet var gran: WKInterfaceButton!

    @IBAction func sizeChica() {
        valores.tamano = "chica"
        proxOpcionButton.setEnabled(true)
        chica.setBackgroundColor(UIColor.greenColor())
        medi.setBackgroundColor(UIColor.darkGrayColor())
        gran.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func sizeMediana() {
        valores.tamano = "mediana"
        proxOpcionButton.setEnabled(true)
        chica.setBackgroundColor(UIColor.darkGrayColor())
        medi.setBackgroundColor(UIColor.greenColor())
        gran.setBackgroundColor(UIColor.darkGrayColor())
    }
    
    @IBAction func sizeGrande() {
        valores.tamano = "grande"
        proxOpcionButton.setEnabled(true)
        chica.setBackgroundColor(UIColor.darkGrayColor())
        medi.setBackgroundColor(UIColor.darkGrayColor())
        gran.setBackgroundColor(UIColor.greenColor())
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        proxOpcionButton.setEnabled(false)
        chica.setBackgroundColor(UIColor.darkGrayColor())
        medi.setBackgroundColor(UIColor.darkGrayColor())
        gran.setBackgroundColor(UIColor.darkGrayColor())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func proxOpcion() {
        pushControllerWithName("vistaDeMasa", context: valores)
    }
    
}
