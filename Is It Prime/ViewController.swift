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
        var startSearch:Int
        startSearch = getUserNumber! - 1
        
        while (startSearch > 1 && isPrime) {
            print(startSearch)
            
            let remainder = getUserNumber! % startSearch
            
            if remainder == 0 {
                isPrime = false
            }
            
            startSearch = startSearch - 1
        }
        
        if (isPrime) {
            primeResult.text = "IS A PRIME NUMBER"
        } else {
            primeResult.text = "Is not a prime number"
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

