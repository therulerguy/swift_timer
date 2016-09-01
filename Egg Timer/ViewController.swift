//
//  ViewController.swift
//  Egg Timer
//
//  Created by j Wang on 8/31/16.
//  Copyright © 2016 jonwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    func timeStarts() {
        
        if time > 0 {
            
            time -= 1
            
        } else {
            
            timer.invalidate()
        
        }
        
        timerLabel.text = String(time)
        
    }
    
    @IBOutlet var timerLabel: UILabel!

    @IBAction func pause(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }

    @IBAction func play(_ sender: AnyObject) {
        
        timer  = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeStarts), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func subtractTime(_ sender: AnyObject) {
        
        if time > 10 {
            
        time -= 10
        timerLabel.text = String(time)
            
        } else {
            
            timer.invalidate()
            
        }
        
    }
    
    @IBAction func addTime(_ sender: AnyObject) {
        
        time += 10
        timerLabel.text = String(time)
        
        
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        
        if time != 210 {
            
            time = 210
            timer.invalidate()
            timerLabel.text = String(time)
            
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

