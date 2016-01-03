//
//  ConfirmarViewController.swift
//  PizzaCreator
//
//  Created by HOU YADDA on 02.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import UIKit

class ConfirmarViewController: UIViewController {
    
    @IBOutlet weak var ordenDescription: UITextView!
    

    var size:String = ""
    var masaType:String = ""
    var cheeseType:String = ""
    var ingreds:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ordenDescription.text = "Pizza " + size
            + " " + masaType
            + "\n\n queso: " + cheeseType
            + "\n\n con: " + ingreds

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
