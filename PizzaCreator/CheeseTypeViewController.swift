//
//  CheeseTypeViewController.swift
//  PizzaCreator
//
//  Created by HOU YADDA on 02.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import UIKit

class CheeseTypeViewController: UIViewController {

    var size:String = ""
    var masaType:String = ""
    var cheeseType:String = "sin queso"
    
    @IBAction func mozarela(sender: UIButton) {
        cheeseType = "mozarela"
    }
    
    @IBAction func cheddar(sender: UIButton) {
        cheeseType = "cheddar"
    }
    
    @IBAction func parmesan(sender: UIButton) {
        cheeseType = "parmesano"
    }
    
    @IBAction func sinqueso(sender: UIButton) {
        cheeseType = "sin queso"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destView = segue.destinationViewController as! IngredientsViewController
        destView.size = self.size
        destView.masaType = self.masaType
        destView.cheeseType = self.cheeseType
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
