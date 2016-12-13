//
//  ViewController.swift
//  Is It Prime
//
//  Created by Dave Schumaker on 12/12/16.
//  Copyright © 2016 Schumaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNumber: UITextField!
    @IBOutlet weak var primeResult: UILabel!
    
    var isPrime = true;
    
    @IBAction func checkPrimeButton(_ sender: Any) {
        let getUserNumber = Int(userNumber.text!)
        var startSearch = getUserNumber
        startSearch -= startSearch
        
        while (startSearch > 0 && isPrime) {
            print(startSearch)
            
            startSearch -= startSearch
        }
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

