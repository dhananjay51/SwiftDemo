//
//  SecondViewController.swift
//  SwiftDemo
//
//  Created by Abhishek Srivastava on 27/12/15.
//  Copyright © 2015 LoudShout. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
