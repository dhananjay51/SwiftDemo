//
//  MyClass.swift
//  SwiftDemo
//
//  Created by Abhishek Srivastava on 27/12/15.
//  Copyright © 2015 LoudShout. All rights reserved.
//

import UIKit
@objc protocol SampleProtocol
{
    func someMethod()
    
}
class MyClass: NSObject {
    var delegate:SampleProtocol?
    var  name:String!
    func name(age:Int)
    {
      print( age)
        delegate?.someMethod()
}

}
