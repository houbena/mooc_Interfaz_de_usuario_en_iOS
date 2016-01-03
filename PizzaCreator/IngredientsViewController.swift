//
//  IngredientsViewController.swift
//  PizzaCreator
//
//  Created by HOU YADDA on 02.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {

    @IBOutlet weak var verLaOrden: UIButton!
    
    var size:String = ""
    var masaType:String = ""
    var cheeseType:String = ""
    var ingreds:String = ""
    
    var jamon:Bool = false
    var pepper:Bool = false
    var pavo:Bool = false
    var salchi:Bool = false
    var aceit:Bool = false
    var ceboll:Bool = false
    var pimient:Bool = false
    var pina:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ja(sender: UISwitch) {
         jamon = sender.on
        updateIngreds()
    }
    
    @IBAction func pe(sender: UISwitch) {
        pepper = sender.on
        updateIngreds()
    }
    
    @IBAction func pa(sender: UISwitch) {
        pavo = sender.on
        updateIngreds()
    }
    
    @IBAction func salchi(sender: UISwitch) {
        salchi = sender.on
        updateIngreds()
    }
    
    @IBAction func ac(sender: UISwitch) {
        aceit = sender.on
        updateIngreds()
    }
    
    @IBAction func ce(sender: UISwitch) {
        ceboll = sender.on
        updateIngreds()
    }
    
    @IBAction func pi(sender: UISwitch) {
        pimient = sender.on
        updateIngreds()
    }
    
    @IBAction func pina(sender: UISwitch) {
        pina = sender.on
        updateIngreds()
    }
    
    func updateIngreds(){
        ingreds = ""
        var n:Int = 0
        if jamon { ingreds += "\n jamón "; n++}
        if pepper {ingreds += "\n pepperoni "; n++}
        if pavo {ingreds += "\n pavo "; n++}
        if salchi {ingreds += "\n salchicha "; n++}
        if aceit {ingreds += "\n aceituna "; n++}
        if ceboll {ingreds += "\n cebolla "; n++}
        if pimient {ingreds += "\n pimiento "; n++}
        if pina {ingreds += "\n piña "; n++}
        
        if n > 5 {verLaOrden.enabled = false} else {
        verLaOrden.enabled = true}
        if n == 0{ingreds = "\n nada"}
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destView = segue.destinationViewController as! ConfirmarViewController
        destView.size = size
        destView.masaType = masaType
        destView.cheeseType = cheeseType
        destView.ingreds = ingreds
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
