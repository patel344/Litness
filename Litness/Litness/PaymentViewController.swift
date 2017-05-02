//
//  PaymentViewController.swift
//  Litness
//
//  Created by Igal on 5/1/17.
//  Copyright © 2017 Igalfsg. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    @IBOutlet weak var Drink_Name: UILabel!
    @IBOutlet weak var Price_lbl: UILabel!
    var drink: String?
    var price: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //the way to make image clickable (i know I chose the worse
        print("yolo")
        self.Drink_Name.text = drink
        self.Price_lbl.text = "$" + String.localizedStringWithFormat("%.2f ", price!)
        bac_val = 8.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Cancel_Btn(sender: AnyObject) {
        let viewController: ViewController = self.storyboard?.instantiateViewControllerWithIdentifier("main_view") as! ViewController
        //viewController.workout = workouts[indexPath.row]
        self.presentViewController(viewController, animated:true, completion:nil)
        print("fuck")
    }
    
    
    @IBAction func Approve_btn(sender: AnyObject) {
        
        
    }
}
