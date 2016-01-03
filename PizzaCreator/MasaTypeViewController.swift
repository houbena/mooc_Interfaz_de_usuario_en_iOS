//
//  MasaTypeViewController.swift
//  PizzaCreator
//
//  Created by HOU YADDA on 02.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import UIKit

class MasaTypeViewController: UIViewController {
    
    @IBOutlet weak var pro: UIButton!
    
    var size:String = ""
    var masaType:String = ""
    
    @IBAction func delgada(sender: UIButton) {
        masaType = "delgada"
        pro.enabled = true
    }
    
    @IBAction func crujiente(sender: UIButton) {
        masaType = "crujiente"
        pro.enabled = true
    }
    
    @IBAction func gruesa(sender: UIButton) {
        masaType = "gruesa"
        pro.enabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destView = segue.destinationViewController as! CheeseTypeViewController
        
        destView.size = self.size
        destView.masaType = self.masaType
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
