//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Abhishek Srivastava on 27/12/15.
//  Copyright © 2015 LoudShout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleProtocol  {
    @IBOutlet var user:UITextField!
    @IBOutlet var Password:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hl swift")
         let ojj = MyClass()
         ojj.delegate=self
         ojj  .name(12)
        
      print("testing")
            
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func  someMethod() {
         print("Delegate")
         // Hello Commit
    }
    
  @IBAction  func  Login (sender:AnyObject)
    {
        let username=user.text
         let  password=Password.text
        
        let  spinner: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0, 0, 150, 150)) as UIActivityIndicatorView
        spinner.startAnimating()
        
        // Send a request to login
        PFUser.logInWithUsernameInBackground(username!, password: password!, block: { (user, error) -> Void in
            
            // Stop the spinner
            spinner.stopAnimating()
            
            if ((user) != nil) {
                let  alert = UIAlertView(title: "Success", message: "Logged In", delegate: self, cancelButtonTitle: "OK")
                alert.show()
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                  
                })
                
            } else {
                let alert = UIAlertView(title: "Error", message: "\(error)", delegate: self, cancelButtonTitle: "OK")
                alert.show()
            }
        })
    }

    }



