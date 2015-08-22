//
//  ViewController.swift
//  TemperatureConversion
//
//  Created by Joshua O'Connor on 1/7/15.
//  Copyright (c) 2015 Joshua O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ConvertedTemp: UILabel!
    
    @IBOutlet weak var TestText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func ToCelcius(sender: AnyObject) {
        
        let newTemp = Double((TestText.text as NSString).doubleValue)
        let Celcius = (newTemp - 32 ) * 5/9
        //convert from string to double value
        ConvertedTemp.text = String(format:"%.2f", Celcius)
        //get text
        //do formula
        //output top label
        // [C] = [F] - 32) x 5/9
        
    }
    
    
    
    @IBAction func ToFarenheit(sender: AnyObject) {
        
        let newTemp = Double((TestText.text as NSString).doubleValue)
        let fahren = (newTemp * 5/9) + 32
        ConvertedTemp.text = String(format:"%.2f", fahren)
        //get text
        //do formula
        //output top label
        // [F] = [C] x 9/5 + 32
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

