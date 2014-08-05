//
//  ViewController.swift
//  Scratch
//
//  Created by Simon Gladman on 05/08/2014.
//  Copyright (c) 2014 Simon Gladman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let count : Int = 5000;
        var arrayOneTotal : Int
        var startTime : CFAbsoluteTime;
        
        //----
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        var arrayOne : Array<Int> = Array<Int>(count: count, repeatedValue : 0);
        
        for i in 0..<arrayOne.count
        {
            arrayOne[i] = 27;
        }
        
        println("***** populate array with []: " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
   
        startTime = CFAbsoluteTimeGetCurrent();
        
        arrayOneTotal = 0;
        for i in 0..<count
        {
            arrayOneTotal += arrayOne[i];
        }
        
        println("***** get sum of array (var): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        //-
        
        let arrayOneConst = arrayOne;
        
        arrayOneTotal = 0;
        for i in 0..<count
        {
            arrayOneTotal += arrayOneConst[i];
        }
        
        println("***** get sum of array (const): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        //----
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        var arrayTwo : Array<Int> = Array<Int>();
        
        for i in 0..<count
        {
            arrayTwo.append(27)
        }
        
        println("***** populate array with append(): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        //----
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        var arrayThree : NSMutableArray = NSMutableArray(capacity: count);
        
        for i in 0..<count
        {
            arrayThree.addObject(27);
        }
        
        println("***** populate nsarray with addObject(): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        arrayOneTotal = 0;
        for i in 0..<count
        {
            arrayOneTotal += arrayThree[i] as Int;
        }
        
        println("***** get sum of nsarray (var): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        startTime = CFAbsoluteTimeGetCurrent();
        
        let arrayThreeConst : NSMutableArray = arrayThree;
        
        arrayOneTotal = 0;
        for i in 0..<count
        {
            arrayOneTotal += arrayThreeConst[i] as Int;
        }
        
        println("***** get sum of nsarray (const): " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
        
        //----

        startTime = CFAbsoluteTimeGetCurrent();
        
        var arrayFour : NSMutableArray = NSMutableArray(capacity: count);
        
        for i in 0..<count
        {
            arrayFour[i] = 27;
        }
        
        println("***** populate nsarray with []: " + NSString(format: "%.4f", CFAbsoluteTimeGetCurrent() - startTime));
    }



}

