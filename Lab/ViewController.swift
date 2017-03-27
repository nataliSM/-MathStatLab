//
//  ViewController.swift
//  Lab
//
//  Created by Наталья on 27.03.17.
//  Copyright © 2017 IOSLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var k: Double = 0
    var l: Double = 0
    var B: Double = 0

    var arr:Array<Double> = []

    @IBOutlet weak var kValue: UITextField!
    
    @IBOutlet weak var lValue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func getArr(B: Double) -> Array<Double> {
       
        arr.append(110.0 + B)
        arr.append(110.7 + B)
        arr.append(110.2 + 2 * B)
        arr.append(110.5 + B)
        arr.append(110.4 + B)
        arr.append(110.2 + B)
        arr.append(110.0 - B)
        arr.append(110.4 + B)
        arr.append(110.4 + 2 * B)
        arr.append(110.6 + B)
        arr.append(110.3 + B)
        arr.append(110.6 - B)
        arr.append(110.2 + B)
        arr.append(110.5 + B)
        arr.append(110.3 + B)
        
        return arr
    }
    @IBAction func countAction(_ sender: UIButton) {
        
        k = Double(kValue.text!)!
        l = Double(lValue.text!)!
        B =  10 * k + 0.1 * l
        
        let array: Array<Any> =  getArr(B: B)
        variatRyad(arr: array as! Array<Double>)
        
//        var viborSrednee =
        
    }

    func variatRyad( arr:Array<Double>)   {
        
        var arr = arr
        for var value in 0 ..< arr.count   {
            var count  = 1
            var index = 0
            var newArr:Array<Double> = []
            var next = value + 1
            for counter in next..<arr.count  {
                let valueNext = arr[counter]
                if arr[value] == valueNext{
                     count = count + 1
                    index = counter
                    newArr.append(arr[value])
                }
                
            }
            print(newArr)
            print("Xi:\(arr[value])  Ni:\(count)")
            
            
//            arr = arr - newArr
        }
        
      
        
    }

}

