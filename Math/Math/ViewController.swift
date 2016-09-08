//
//  ViewController.swift
//  Math
//
//  Created by Student on 9/7/16.
//  Copyright © 2016 MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
        
        
    }

    @IBOutlet weak var lbl_so1: UILabel!
    
    @IBOutlet weak var lbl_so2: UILabel!
    
   
    @IBOutlet weak var btn_b1: UIButton!
    @IBOutlet weak var btn_b2: UIButton!
    @IBOutlet weak var btn_b3: UIButton!
    
    
    @IBAction func btn_action(sender: UIButton) {
        
        random()
        setRandom()
    }
    

    @IBOutlet weak var phepTinh: UILabel!
    
    
    func random()
    {
        let a = Int(arc4random_uniform(4)) + 1
        if a == 1 {
            phepTinh.text = "+"
                                
        }
        else if a == 2 {
            phepTinh.text = "-"
        }
        else if a == 3 {
            phepTinh.text = "x"
        }
        else {
            phepTinh.text = ":"
        }
        
    }
    
    
    
    func setRandom()
    {
        let random1 = Int(arc4random_uniform(4)) + 1  //random ra so tu 0 den 3 roi cong them 1
        let random2 = Int(arc4random_uniform(4)) + 1
        
        
        lbl_so1.text = String(random1)
        lbl_so2.text = String(random2)
        
       setResult(random1, randomB: random2)
    }
    
  func setResult(randomA: Int, randomB: Int)
    {
  //  btn_b1.setTitle(String(randomA), forState: .Normal)
  //    btn_b2.setTitle(String(randomB), forState: .Normal)
   //   btn_b3.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        
        
   
        let result:Int
        switch phepTinh.text! {
        case "+":   result = randomA + randomB
        case "-":   result = randomA - randomB
        case "x":   result = randomA * randomB
        default:    result = randomA / randomB
        }
      

        let i = Int(arc4random_uniform(3)) + 1
        if i == 1 {
            btn_b1.setTitle(String(result), forState: .Normal)
            btn_b2.setTitle(String(randomB), forState: .Normal)
            btn_b3.setTitle(String(randomA), forState: .Normal)
        }
        else if i == 2 {
            btn_b1.setTitle(String(randomA), forState: .Normal)
            btn_b2.setTitle(String(result), forState: .Normal)
            btn_b3.setTitle(String(randomB), forState: .Normal)
        }
        else {
            btn_b1.setTitle(String(randomB), forState: .Normal)
            btn_b2.setTitle(String(randomA), forState: .Normal)
            btn_b3.setTitle(String(result), forState: .Normal)
        }

      
    }
    
    
    
    

}

