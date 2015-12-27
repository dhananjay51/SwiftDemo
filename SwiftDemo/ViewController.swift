//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Abhishek Srivastava on 27/12/15.
//  Copyright © 2015 LoudShout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleProtocol  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hl swift")
         let ojj = MyClass()
         ojj.delegate=self
         ojj  .name(12)
        
     
            
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func  someMethod() {
         print("Delegate")
    }
    
   
    
    
}

