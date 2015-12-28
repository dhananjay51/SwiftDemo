//
//  SecondViewController.swift
//  SwiftDemo
//
//  Created by Abhishek Srivastava on 27/12/15.
//  Copyright © 2015 LoudShout. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var user:UITextField!
    @IBOutlet var Email:UITextField!
    @IBOutlet var Pasword :UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let obj = MyClass()
        obj.name="dhanajaysingh"
        print( obj.name)
        obj.name(6)
        
        //var myArray = ["Steve", "Bill", "Linus", "Bret"]
        
        //  var someDict =  [KeyType: ValueType]()
        
        var dict=[ "1": "one", "2":"two"]
        print(dict["1"])
        
        var someDict :[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        print(someDict[1])


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
@IBAction    func  SignUp(sender:AnyObject)
    {
        
        let username = user.text
        let password = Pasword.text
        let  email = Email.text
        let  spinner: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0, 0, 150, 150)) as UIActivityIndicatorView
        spinner.startAnimating()
        
        let newUser = PFUser()
        
        newUser.username = username
        newUser.password = password
        newUser.email = email
        
        // Sign up the user asynchronously
        newUser.signUpInBackgroundWithBlock({ (succeed, error) -> Void in
            
            // Stop the spinner
            spinner.stopAnimating()
            if ((error) != nil) {
                let alert = UIAlertView(title: "Error", message: "\(error)", delegate: self, cancelButtonTitle: "OK")
                alert.show()
                
            } else {
                let alert = UIAlertView(title: "Success", message: "Signed Up", delegate: self, cancelButtonTitle: "OK")
                alert.show()
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    //let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Home") as! UIViewController
                   // self.presentViewController(viewController, animated: true, completion: nil)
                })
            }
        })
    }

    }
