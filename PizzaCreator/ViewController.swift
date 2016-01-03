//
//  ViewController.swift
//  PizzaCreator
//
//  Created by HOU YADDA on 02.01.16.
//  Copyright © 2016 houyadda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var size:String = ""
    
    @IBOutlet weak var pro: UIButton!

    @IBAction func sizeChice(sender: UIButton) {
        self.size = "chica"
        pro.enabled = true
    }
    
    @IBAction func sizeMediana(sender: UIButton) {
        self.size = "mediana"
        pro.enabled = true
    }
    
    @IBAction func sizeGrande(sender: UIButton) {
        self.size = "grande"
        pro.enabled = true
    }
    
    func getSize()->String{
        return size
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! MasaTypeViewController
        sigVista.size = self.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

