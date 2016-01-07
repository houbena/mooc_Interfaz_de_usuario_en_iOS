//
//  Valores.swift
//  PizzaCreatorAW
//
//  Created by HOU YADDA on 07.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    var tamano = ""
    var masa = ""
    var queso = ""
    
    var jamon:Bool = false
    var pepper:Bool = false
    var pavo:Bool = false
    var salchi:Bool = false
    var aceit:Bool = false
    var ceboll:Bool = false
    var pimient:Bool = false
    var pina:Bool = false
    
    init(t:String, m:String, q:String,
        ja:Bool, pe:Bool, pa:Bool, sa:Bool, ac:Bool, ce: Bool, pim:Bool, pin:Bool) {
            tamano = t
            masa = m
            queso = q
            jamon = ja
            pepper = pe
            pavo = pa
            salchi = sa
            aceit = ac
            ceboll = ce
            pimient = pim
            pina = pin
    }
}
