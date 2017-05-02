//
//  ViewController.swift
//  Litness
//
//  Created by Igal on 5/1/17.
//  Copyright © 2017 Igalfsg. All rights reserved.
//

import UIKit
var bac_val = 3.1416
var money_spent = 69.00
class ViewController: UIViewController, UIGestureRecognizerDelegate {
    //this is not the right way of adding images as buttos but yolo
    @IBOutlet weak var First_image: UIImageView!
    @IBOutlet weak var Second_image: UIImageView!
    @IBOutlet weak var Back_lbl: UILabel!
    @IBOutlet weak var Money_lbl: UILabel!
    var drinks: [String] = ["Margarita", "Martini", "Corona", "Jose Cuervo"]
    var prices: [Float] = [23, 32, 5, 4]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //the way to make image clickable (i know I chose the worse
        let First_img_sel = UITapGestureRecognizer(target: self, action: #selector(ViewController.Firstimage(_:)))
        First_img_sel.delegate = self
        self.First_image.addGestureRecognizer(First_img_sel)
        self.First_image.userInteractionEnabled = true
        
        //labels
        self.Money_lbl.text = "$" + String.localizedStringWithFormat("%.2f ", money_spent)
        self.Back_lbl.text = "BAC: " + String.localizedStringWithFormat("%.2f ", bac_val)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //function ran when first image clicked
    func Firstimage(sender: AnyObject){
        print("OMG it works")
        let viewController: PaymentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("Payment_view") as! PaymentViewController
        viewController.drink = drinks[0]
        viewController.price = prices[0]
        self.presentViewController(viewController, animated:true, completion:nil)
        //self.navigationController?.pushViewController(viewController, animated: true)
    }

}

